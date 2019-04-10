require 'cloud/vsphere/logger'
require 'digest'

module VSphereCloud
  class UnrealizedResource < StandardError
    def initialize(path)
      @path = path
    end

    def to_s
      "Resource with path: #{@path} is not realized yet"
    end
  end
  class NSXTPolicyProvider
    include Logger

    def initialize(client,  nsxt_mgr_provider, default_vif_type=PARENT)
      @client = client
      @default_vif_type = default_vif_type
      @manager_provider = nsxt_mgr_provider
      @sleep_time = DEFAULT_SLEEP
      @max_tries = MAX_TRIES
    end

    def nsxt_segment_port_list(vm:)
      vm_segment_manager_vif_list = vm.get_nsxt_segment_vif_list
      @manager_provider.retrieve_lport_display_names_from_vif_ids(vm_segment_manager_vif_list)
    end

    def add_vm_to_groups(vm, groups)
      logger.info("Adding vm: #{vm.cid} to groups: #{groups}")

      return if groups.nil? || groups.empty?

      # Get NSX-T segment and port map for this VM
      nsxt_segment_port_map = nsxt_segment_port_list(vm: vm)
      return if nsxt_segment_port_map.nil?

      # Get NSX-T segment port object paths from all the ports
      segment_port_paths = nsxt_segment_port_map.map do |seg_name, port_id|
          policy_segment_port_api.get_infra_segment_port(seg_name, port_id)
      end.map(&:path)

      # All port paths above need to be added to the all the groups. So,
      groups.each do |grp|
        logger.info("Adding segment ports: #{segment_port_paths} to Group: #{grp}")
        retry_on_conflict("while adding vm: #{vm.cid} to group #{grp}") do
          group_obj = retrieve_group(group_id: grp)
          path_expression = get_or_create_path_expression(group_obj)
          path_expression.paths.push(*segment_port_paths)
          logger.info("Addition of vm: #{vm.cid} , group looks like #{group_obj}")
          policy_group_api.update_group_for_domain(DEFAULT_NSXT_POLICY_DOMAIN, group_obj.id, group_obj)
        end
        group_obj = policy_group_api.read_group_for_domain(DEFAULT_NSXT_POLICY_DOMAIN, grp)
        logger.info("Addition Done vm: #{vm.cid} , group looks like #{group_obj}")
      end
      logger.info("Added vm: #{vm.cid} to groups: #{groups}")
    end

    def retry_on_conflict(log_str)
      yield
    rescue NSXTPolicy::ApiCallError => e
      if [409, 412].include?(e.code)
        logger.info("Revision Error: #{log_str if log_str} with message #{e.message}")
        # To limit request rate on NSX-T server
        sleep(rand(5)/2.0)
        retry
      end
      logger.info("Failed #{log_str if log_str} with message #{e.message}")
      raise e
    end

    def remove_vm_from_groups(vm)
      logger.info("Removing vm: #{vm.cid} from all Policy Groups it is part of")

      # Get NSX-T segment and port map for this VM
      nsxt_segment_port_list = nsxt_segment_port_list(vm: vm) or return

      # Get NSX-T segment port object paths from all the ports
      segment_port_paths = nsxt_segment_port_list.map do |seg_name, port_id|
        policy_segment_port_api.get_infra_segment_port(seg_name, port_id)
      end.map(&:path)

      all_groups = retrieve_all_groups
      logger.info("segment port paths #{segment_port_paths}")

      # For all the groups
      all_groups.each do |grp|
        retry_on_conflict("while removing vm: #{vm.cid} from group #{grp.id}") do
          grp = retrieve_group(group_id: grp.id)
          # Nothing to delete from the empty group
          next if grp.expression.nil? || grp.expression.empty?

          modified_grp = false
          all_path_expressions = grp.expression.select{|expr| expr.is_a?(NSXTPolicy::PathExpression)}

          # for all the path expressions in a group
          exprs_to_delete = []
          all_path_expressions.each_with_index do |path_expr, index|
            # Next if there are no PATHS in the path expression
            next if path_expr.paths.nil? || path_expr.paths.empty?
            logger.info("Removing intersection port paths #{segment_port_paths} from grp: #{grp.id}")
            old_length = path_expr.paths.length
            # For each path in path expression , delete if it is in segment port paths
            path_expr.paths.delete_if do |path|
              segment_port_paths.include?(path)
            end
            new_length = path_expr.paths.length
            modified_grp = true if old_length != new_length
            # Delete the expression itself if it contains no path.
            if path_expr.paths.empty?
              exprs_to_delete << path_expr
              # For the conjunction operator
              exprs_to_delete << grp.expression[index - 1] if index > 0
            end
          end
          if modified_grp
            exprs_to_delete.each do|expr|
              logger.info("Removing Expression #{expr.id} from grp: #{grp.id}")
              grp.expression.delete(expr)
            end
            logger.info("Removal of vm: #{vm.cid} , group #{grp}")
            policy_group_api.update_group_for_domain(DEFAULT_NSXT_POLICY_DOMAIN, grp.id, grp)
          end
        end
        grp = policy_group_api.read_group_for_domain(DEFAULT_NSXT_POLICY_DOMAIN, grp.id)
        logger.info("Removal done vm: #{vm.cid} grp: #{grp}")
      end
    end

    def update_vm_metadata_on_logical_ports(vm, metadata)
      return unless metadata.has_key?('id')

      segment_port_list = nsxt_segment_port_list(vm: vm)
      return if segment_port_list.nil?

      # Now segment_port_id_list contains segment name as key and port id as value
      # This pair is all that is needed to GET/PUT a port
      # @ TA : TODO check if log is printed once for each pair.
      segment_port_list.each do |seg_name, port_id|
        logger.info("Adding tag: #{metadata['id']} to segment: #{seg_name} and port: #{port_id} for vm: #{vm.cid}")
        begin
          segment_port = policy_segment_port_api.get_infra_segment_port(seg_name, port_id)
          id_tag = NSXTPolicy::Tag.new(scope: 'bosh/id', tag: Digest::SHA1.hexdigest(metadata['id']))
          segment_port.tags << id_tag
          policy_segment_port_api.create_or_replace_infra_segment_port(seg_name, port_id, segment_port)
        rescue NSXTPolicy::ApiCallError => e
          if e.code == 412
            # Keep retrying if revision is old.
            retry
          else
            logger.info("Failed to add tag: #{metadata['id']} to segment: #{seg_name} and port: #{port_id}
                        for vm: #{vm.cid} with error: #{e.inspect}")
            raise e
          end
        end
        logger.info("Added tag: #{metadata['id']} to segment: #{seg_name} and port: #{port_id} for vm: #{vm.cid}")
      end
    end

    def create_segment_port(segment:, tags:)
      port_id = "#{tags.vm_name}_#{segment}_#{tags.network_index}"
      port_tags = tags.each_pair.map do |type, value|
        NSXTPolicy::Tag.new(scope: "cpi/#{type}", tag: value)
      end

      port_attachment = NSXTPolicy::PortAttachment.new(id: "#{SecureRandom.uuid}", type: "PARENT")
      segment_port = NSXTPolicy::SegmentPort.new(id: port_id, display_name: port_id,
        description: "Created by BOSH vSphere-CPI", tags: port_tags, attachment: port_attachment)
      logger.info("Creating Segment Port #{port_id} on segment #{segment} with tags #{tags}")
      retry_on_conflict("while creating segment port #{port_id} on segment #{segment}") do
        segment_port = policy_segment_port_api.create_or_replace_infra_segment_port(segment, port_id, segment_port)
      end
      poll_until_realized(intent_path: segment_port.path)
      logger.info("Finished creating segment port #{segment_port.id} "\
                            "with port attachment id: #{segment_port.attachment.id}")
      segment_port.attachment.id
    end

    def delete_segment_ports(vm:)
      nsxt_segment_port_list = nsxt_segment_port_list(vm: vm)
      return if nsxt_segment_port_list.nil? || nsxt_segment_port_list.empty?
      nsxt_segment_port_list.each do |seg, port|
        delete_segment_port(segment: seg, port: port)
      end
    end

    def delete_segment_port(segment:, port:)
      logger.info("Deleting port: #{port} on segment: #{segment}")
      begin
        policy_segment_port_api.delete_infra_segment_port(segment, port)
      rescue => e
        logger.info("Failed to Delete port: #{port} on segment: #{segment} with message: #{e.inspect} with code #{e.code}")
        raise e
      end
      logger.info("Finished Deleting logical port: #{port} on segment: #{segment}")
    end

    private

    DEFAULT_NSXT_POLICY_DOMAIN = 'default'.freeze
    DEFAULT_SLEEP = 1
    MAX_TRIES=100

    # def poll_group_until_realized(intent_path:, vm: nil)
    #   Bosh::Retryable.new(
    #       tries: @max_tries,
    #       sleep: ->(try_count, retry_exception) { @sleep_time },
    #       on: [UnrealizedResource]
    #   ).retryer do |i|
    #     logger.info("Polling (try:##{i}) to check if Group with path: #{intent_path} is realized or not")
    #     result = policy_realization_api.list_realized_entities(intent_path)
    #
    #     # In case policy API has not started realizing an entity. the results should be nil then as count is 0
    #     raise UnrealizedResource.new(intent_path) if result.result_count == 0
    #     # Select all that have been realized and are type of logical port
    #     result.results.select! do |res|
    #       res.state == 'REALIZED'
    #     end
    #     # If none has been realized yet, raise error
    #     raise UnrealizedResource.new(intent_path) if result.results.empty?
    #
    #     # get the first result
    #     segment_port_realized = result.results.first
    #     # return realization specific identifier
    #     realized_id = segment_port_realized.realization_specific_identifier
    #     logger.info("Group realized with id: #{realized_id} ")
    #   end
    # end

    def poll_until_realized(intent_path:, vm: nil)
      Bosh::Retryable.new(
          tries: @max_tries,
          sleep: ->(try_count, retry_exception) { @sleep_time },
          on: [UnrealizedResource]
      ).retryer do |i|
        logger.info("Polling (try:##{i}) to check if Entity with path: #{intent_path} is realized or not")
        result = policy_realization_api.list_realized_entities(intent_path)

        # In case policy API has not started realizing an entity. the results should be nil then as count is 0
        raise UnrealizedResource.new(intent_path) if result.result_count == 0
        # Select all that have been realized and are type of logical port
        result.results.select! do |res|
          # Not needed as path should be unique
          # @TA : TODO Check with Shyam
          # res.entity_type == "RealizedLogicalPort" &&
          res.state == 'REALIZED'
        end
        # If none has been realized yet, raise error
        raise UnrealizedResource.new(intent_path) if result.results.empty?
        # get the first result
        segment_port_realized = result.results.first
        # return realization specific identifier
        realized_id = segment_port_realized.realization_specific_identifier
        #@TA TODO : Remove very verbose logs, obj:
        logger.info("VM: #{vm.cid unless vm.nil?} Entity: #{intent_path} realized with id: #{realized_id}")
      end
    end

    def retrieve_group(group_id:)
      logger.info("Searching for Policy Group with group id: #{group_id}")
      begin
        group = policy_group_api.read_group_for_domain(DEFAULT_NSXT_POLICY_DOMAIN, group_id)
      rescue => e
        logger.info("Failed to find Policy Group: #{group_id} with error #{e.inspect}")
        raise e
      end
      logger.info("Found Policy Group: #{group.id}")
      group
    end

    def retrieve_all_groups()
      logger.info("Gathering all Policy Groups")
      groups = []
      group_list = policy_group_api.list_group_for_domain(DEFAULT_NSXT_POLICY_DOMAIN)
      groups.push(*group_list.results)
      until group_list.cursor.nil?
        group_list = policy_group_api.list_group_for_domain(DEFAULT_NSXT_POLICY_DOMAIN, cursor: group_list.cursor)
        groups.push(*group_list.results)
      end
      logger.info("Found #{groups.size} Policy Groups")
      groups
    end

    def get_or_create_path_expression(group_obj)
      if group_obj.expression.nil?
        group_obj.expression = []
      end

      if group_obj.expression.empty?
        group_obj.expression << NSXTPolicy::PathExpression.new(resource_type: 'PathExpression',
                                                         id:"path-#{SecureRandom.uuid}", paths: [])
        return group_obj.expression.first
      end

      # get first path expression
      # There could be multiple but we only need one as there is
      # no restriction on number of paths I can add to one path expression
      #   Why would there be multiple?
      #   Because NSX-T allows it and someone could end up creating multiple
      path_expression = group_obj.expression.detect{|expr| expr.is_a?(NSXTPolicy::PathExpression)}
      return path_expression unless path_expression.nil?

      # No path expression exists
      # Add new path expression with a conjunction operator
      # Add an AND conjunction operator
      group_obj.expression << NSXTPolicy::ConjunctionOperator.new(resource_type: 'ConjunctionOperator',
                                                            conjunction_operator: 'OR',
                                                            id: "conjunction-#{SecureRandom.uuid}")
      group_obj.expression << NSXTPolicy::PathExpression.new(resource_type: 'PathExpression',
                                                       id:"path-#{SecureRandom.uuid}", paths: [])
      return group_obj.expression.last
    end

    def policy_segment_port_api
      @policy_segment_port_api ||= NSXTPolicy::PolicyConnectivitySegmentsPortsApi.new(@client)
    end

    def policy_segment_api
      @policy_segment_api ||= NSXTPolicy::PolicyConnectivitySegmentsApi.new(@client)
    end

    def policy_group_api
      @policy_group_api ||= NSXTPolicy::PolicyApi.new(@client)
    end

    def policy_realization_api
      @policy_realization_api = NSXTPolicy::PolicyRealizationApi.new(@client)
    end
  end
end
