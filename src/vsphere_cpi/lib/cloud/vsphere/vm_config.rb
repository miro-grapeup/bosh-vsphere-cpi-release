require 'uri'

module VSphereCloud
  class VmConfig
    include Logger

    def initialize(manifest_params:, cluster_provider: nil)
      @manifest_params = manifest_params
      @cluster_provider = cluster_provider
    end

    def upgrade_hw_version?(vmtype_hw_version, global_hw_version)
      vmtype_hw_version.nil? ? global_hw_version : vmtype_hw_version
    end

    def name
      return @vm_cid if defined? @vm_cid

      unless human_readable_name_enabled?
        @vm_cid = "vm-#{SecureRandom.uuid}"
        return @vm_cid
      end

      if human_readable_name_info.nil?
        logger.info("Not enough metadata to construct human readable name, using UUID based naming.")
        @vm_cid = "vm-#{SecureRandom.uuid}"
        return @vm_cid
      end
      @vm_cid = generate_human_readable_name(human_readable_name_info[0], human_readable_name_info[1], vm_index)
      if @vm_cid != "#{URI.escape(@vm_cid)}"
        logger.info("Metadata contains non ASCII characters, using UUID based naming.")
        @vm_cid = "vm-#{SecureRandom.uuid}"
      end
      @vm_cid
    end

    def cluster_placements
      if has_custom_cluster_properties?
        clusters = find_clusters(resource_pool_clusters_spec)
      else
        validate_clusters
        clusters = global_clusters
      end
      cluster_placement_internal(clusters: clusters)
    end

    def drs_rule(cluster)
      cluster_name = cluster.name
      cluster_spec = resource_pool_clusters_spec.find { |cluster_spec| cluster_spec.keys.first == cluster_name }
      return nil if cluster_spec.nil? || cluster_spec[cluster_name].nil?
      cluster_spec[cluster_name].fetch('drs_rules', []).first
    end

    def ephemeral_disk_size
      vm_type.disk
    end

    def stemcell_cid
      stemcell[:cid]
    end

    def stemcell_size
      stemcell[:size]
    end

    def agent_id
      @manifest_params[:agent_id]
    end

    def agent_env
      @manifest_params[:agent_env]
    end

    def storage_policy_name
      @manifest_params[:storage_policy]
    end

    def human_readable_name_enabled?
      @manifest_params[:enable_human_readable_name]
    end

    def human_readable_name_info
      @manifest_params.fetch(:human_readable_name_info, nil)
    end

    def vm_index
      @manifest_params.fetch(:vm_index, nil)
    end

    def networks_spec
      @manifest_params[:networks_spec] || {}
    end

    def generate_name_prefix(instance_name, deployment_name, prefix_length, deployment_length)
      if instance_name.size + deployment_name.size > prefix_length
        trim_codepoint_size = instance_name.size + deployment_name.size - prefix_length
        if deployment_name.size <= deployment_length
          instance_name = instance_name.slice(0, instance_name.size - trim_codepoint_size)
        else
          instance_codepoint_size = [prefix_length -  21, instance_name.size].min
          instance_name = instance_name.slice(0, instance_codepoint_size)
          deployment_name = deployment_name.slice(0, prefix_length - instance_codepoint_size)
        end
      end
      "#{instance_name}_#{deployment_name}"
    end

    def generate_human_readable_name(instance_name, deployment_name, vm_index)
      dp_length = 25 # ideally reserve 25 digits for deployment name
      uuid_suffix = SecureRandom.uuid.slice(-12, 12)

      if vm_index.nil?
        max_prefix = 79 - 12 - 2 # limit 80 from vCenter, 12 digits unique suffix, 2  underscores
        name_prefix = generate_name_prefix(instance_name, deployment_name, max_prefix, dp_length)
        return "#{name_prefix}_#{uuid_suffix}"
      end

      # 4 digits can support for 10,000 vms. In case exceeded , trim it.
      if vm_index.size > 4
        vm_index = vm_index.slice(-4, 4)
      end

      max_prefix = 79 - 12 - vm_index.size - 3 # 3 digits for underscores
      dp_length = dp_length - vm_index.size
      name_prefix = generate_name_prefix(instance_name, deployment_name, max_prefix, dp_length)
      "#{name_prefix}_#{vm_index}_#{uuid_suffix}"
    end

    def vsphere_networks
      networks_map = {}
      networks_spec.each_value do |network_spec|
        cloud_properties = network_spec['cloud_properties']
        unless cloud_properties.nil? || cloud_properties['name'].nil?
          name = cloud_properties['name']
          networks_map[name] ||= []
          networks_map[name] << network_spec['ip']
        end
      end
      networks_map
    end

    def config_spec_params
      params = {}
      params[:num_cpus] = vm_type.cpu
      params[:memory_mb] = vm_type.ram
      params[:nested_hv_enabled] = true if vm_type.nested_hardware_virtualization
      params[:cpu_hot_add_enabled] = true if vm_type.cpu_hot_add_enabled
      params[:memory_hot_add_enabled] = true if vm_type.memory_hot_add_enabled
      params.delete_if { |k, v| v.nil? }
    end


    def bosh_group
      if !agent_env['bosh'].nil? then
        return agent_env['bosh']['group']
      else
        return nil
      end
    end

    def vmx_options
      vm_type.vmx_options || {}
    end

    #VSphereCloud::VmType
    def vm_type
      @manifest_params[:vm_type]
    end

    def validate_drs_rules(cluster)
      cluster_name = cluster.name
      cluster_config = resource_pool_clusters_spec.find {|cluster_spec| cluster_spec.keys.first == cluster_name}
      return if cluster_config.nil?

      drs_rules = cluster_config[cluster_name]['drs_rules']
      return if drs_rules.nil?

      if drs_rules.size > 1
        raise 'vSphere CPI supports only one DRS rule per resource pool'
      end

      rule_config = drs_rules.first

      if rule_config['type'] != 'separate_vms'
        raise "vSphere CPI only supports DRS rule of 'separate_vms' type, not '#{rule_config['type']}'"
      end
    end

    private

    def has_custom_cluster_properties?
      # custom properties include drs_rules and vcenter resource_pools
      !resource_pool_clusters_spec.empty?
    end
    
    def find_clusters(clusters_spec)
      clusters_spec.map do |cluster_spec|
        ClusterConfig.new(cluster_spec.keys.first, cluster_spec.values.first)
      end.map do |cluster_config|
        @cluster_provider.find(cluster_config.name, cluster_config, vm_type.datacenter.name)
      end
    end

    def global_clusters
      @manifest_params[:global_clusters] || []
    end

    def stemcell
      @manifest_params[:stemcell] || {}
    end

    def disk_configurations
      @manifest_params[:disk_configurations] || {}
    end

    def datacenters_spec
      vm_type&.datacenters || []
    end

    def resource_pool_clusters_spec
      datacenter_spec = datacenters_spec.first || {}
      datacenter_spec.fetch('clusters', [])
    end

    def validate_clusters
      if global_clusters.empty? && !has_custom_cluster_properties?
        raise Bosh::Clouds::CloudError, 'No valid clusters were provided'
      end
    end

    def cluster_placement_internal(clusters:)
      return @cluster_placement if @cluster_placement

      vm_selection_placement_pipeline = VmPlacementSelectionPipeline.new(disk_config: disk_configurations, req_memory: vm_type.ram) do
        logger.info("Gathering vm placement resources for vm placement allocator pipeline")
        clusters.map do |cluster|
          VmPlacement.new(cluster: cluster, datastores: cluster.accessible_datastores.values, hosts: nil)
        end
      end
      @cluster_placement = vm_selection_placement_pipeline.each.to_a
      raise Bosh::Clouds::CloudError,
        'No valid placement found for VM compute and storage requirement' if @cluster_placement.first.nil?
      @cluster_placement
    end
  end
end
