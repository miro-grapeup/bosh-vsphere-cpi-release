require 'cloud/vsphere/logger'

module VSphereCloud
  class DrsRule
    include Logger

    CUSTOM_ATTRIBUTE_NAME = 'drs_rule'
    # TODO: remove cloud searcher parameter
    # No need to pass cloud searcher as client is already present
    def initialize(rule_name, client, cloud_searcher, datacenter_cluster)
      @rule_name = rule_name
      @client = client
      @cloud_searcher = cloud_searcher
      @datacenter_cluster = datacenter_cluster

      @vm_attribute_manager = VMAttributeManager.new(
        client.service_content.custom_fields_manager
      )
    end

    def add_vm(vm)
      tag_vm(vm)

      DrsLock.new(@vm_attribute_manager).with_drs_lock do
        rule = find_rule
        if rule
          update_rule(rule.key)
        else
          add_rule
        end
      end
    end

    # Adds VM to given VM Group & creates VM/HOST Affinity rule
    # @param [Vim::VirtualMachine] vm
    # @params [String] vm_group_name
    # @params [String] host_group_name
    def add_vm_host_affinity_rule(vm, vm_group_name, host_group_name)
      DrsLock.new(@vm_attribute_manager).with_drs_lock do
        add_vm_to_vm_group(vm, vm_group_name)
        rule = find_rule
        # Do not create the rule if it already exists
        unless rule
          # No error is raised if given host group does not exist, it still creates the rule
          create_vm_host_affinity_rule(vm_group_name, host_group_name)
        end
      end
    end

    private

    def tag_vm(vm)
      custom_attribute = @vm_attribute_manager.find_by_name(CUSTOM_ATTRIBUTE_NAME)
      unless custom_attribute
        logger.debug('Creating DRS rule attribute')
        @vm_attribute_manager.create(CUSTOM_ATTRIBUTE_NAME)
      end

      logger.debug("Updating DRS rule attribute value: #{@rule_name}, vm: #{vm.name}")
      vm.set_custom_value(CUSTOM_ATTRIBUTE_NAME, @rule_name)
    end

    def find_rule
      @datacenter_cluster.configuration_ex.rule.find { |r| r.name == @rule_name }
    end

    def add_rule
      logger.debug("Adding DRS rule: #{@rule_name}")
      add_anti_affinity_rule('add')
    end

    def update_rule(rule_key)
      logger.debug("Updating DRS rule: #{@rule_name}")
      add_anti_affinity_rule('edit', rule_key)
    end

    def find_vm_group(vm_group_name)
      @datacenter_cluster.configuration_ex.group.find { |group| group.name == vm_group_name && group.is_a?(VimSdk::Vim::Cluster::VmGroup)}
    end

    # If vm group already exists, you cannot define operation as add,
    # also you need to pass all existing vms when you edit
    def add_vm_to_vm_group(vm, vm_group_name)
      vm_group = find_vm_group(vm_group_name)
      vm_group_spec = VimSdk::Vim::Cluster::VmGroup.new
      vm_group_spec.vm = vm_group ? vm_group.vm.concat([vm]) : [vm]
      vm_group_spec.name = vm_group_name

      group_spec = VimSdk::Vim::Cluster::GroupSpec.new
      group_spec.info = vm_group_spec
      group_spec.operation = vm_group ? 'edit' : 'add'

      config_spec = VimSdk::Vim::Cluster::ConfigSpecEx.new
      config_spec.group_spec = [group_spec]

      logger.debug("Adding VM to VM group: #{vm_group_name}")
      reconfigure_cluster(config_spec)
    end

    def create_vm_host_affinity_rule(vm_group_name, host_group_name)
      vm_host_rule_info = VimSdk::Vim::Cluster::VmHostRuleInfo.new
      vm_host_rule_info.enabled = true
      vm_host_rule_info.name = @rule_name
      vm_host_rule_info.vm_group_name = vm_group_name
      vm_host_rule_info.affine_host_group_name = host_group_name

      cluster_rule_spec = VimSdk::Vim::Cluster::RuleSpec.new
      cluster_rule_spec.info = vm_host_rule_info
      cluster_rule_spec.operation = 'add'

      config_spec = VimSdk::Vim::Cluster::ConfigSpecEx.new
      config_spec.rules_spec = [cluster_rule_spec]

      logger.debug("Creating VM/Host Affinity Rule: #{@rule_name}")
      reconfigure_cluster(config_spec)
    end

    def add_anti_affinity_rule(operation, rule_key = nil)
      config_spec = VimSdk::Vim::Cluster::ConfigSpecEx.new
      rule_spec = VimSdk::Vim::Cluster::RuleSpec.new
      rule_spec.operation = operation

      rule_info = VimSdk::Vim::Cluster::AntiAffinityRuleSpec.new
      rule_info.enabled = true
      rule_info.name = @rule_name
      rule_info.vm = tagged_vms
      vm_names = rule_info.vm.map { |v| v.name }
      logger.debug("Setting DRS rule: #{@rule_name}, vms: #{vm_names.join(', ')}")
      rule_info.key = rule_key if rule_key

      rule_spec.info = rule_info

      config_spec.rules_spec = [rule_spec]
      reconfigure_cluster(config_spec)
    end

    def reconfigure_cluster(config_spec)
      @client.wait_for_task do
        @datacenter_cluster.reconfigure_ex(config_spec, true)
      end
    end

    def tagged_vms
      custom_attribute = @vm_attribute_manager.find_by_name(CUSTOM_ATTRIBUTE_NAME)
      return [] unless custom_attribute

      @cloud_searcher.get_managed_objects_with_attribute(
        VimSdk::Vim::VirtualMachine,
        custom_attribute.key,
        value: @rule_name
      )
    end
  end
end
