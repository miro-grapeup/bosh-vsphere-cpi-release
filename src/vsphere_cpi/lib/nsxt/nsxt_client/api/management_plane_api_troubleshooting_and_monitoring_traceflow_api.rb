=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Initiate a Traceflow Operation on the Specified Port
    # Initiate a Traceflow Operation on the Specified Port
    # @param traceflow_request 
    # @param [Hash] opts the optional parameters
    # @return [Traceflow]
    def create_traceflow(traceflow_request, opts = {})
      data, _status_code, _headers = create_traceflow_with_http_info(traceflow_request, opts)
      data
    end

    # Initiate a Traceflow Operation on the Specified Port
    # Initiate a Traceflow Operation on the Specified Port
    # @param traceflow_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Traceflow, Fixnum, Hash)>] Traceflow data, response status code and response headers
    def create_traceflow_with_http_info(traceflow_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.create_traceflow ...'
      end
      # verify the required parameter 'traceflow_request' is set
      if @api_client.config.client_side_validation && traceflow_request.nil?
        fail ArgumentError, "Missing the required parameter 'traceflow_request' when calling ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.create_traceflow"
      end
      # resource path
      local_var_path = '/traceflows'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(traceflow_request)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Traceflow')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi#create_traceflow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete the Traceflow round
    # Delete the Traceflow round
    # @param traceflow_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_traceflow(traceflow_id, opts = {})
      delete_traceflow_with_http_info(traceflow_id, opts)
      nil
    end

    # Delete the Traceflow round
    # Delete the Traceflow round
    # @param traceflow_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_traceflow_with_http_info(traceflow_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.delete_traceflow ...'
      end
      # verify the required parameter 'traceflow_id' is set
      if @api_client.config.client_side_validation && traceflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'traceflow_id' when calling ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.delete_traceflow"
      end
      # resource path
      local_var_path = '/traceflows/{traceflow-id}'.sub('{' + 'traceflow-id' + '}', traceflow_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi#delete_traceflow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the Traceflow round status and result summary
    # Get the Traceflow round status and result summary
    # @param traceflow_id 
    # @param [Hash] opts the optional parameters
    # @return [Traceflow]
    def get_traceflow(traceflow_id, opts = {})
      data, _status_code, _headers = get_traceflow_with_http_info(traceflow_id, opts)
      data
    end

    # Get the Traceflow round status and result summary
    # Get the Traceflow round status and result summary
    # @param traceflow_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Traceflow, Fixnum, Hash)>] Traceflow data, response status code and response headers
    def get_traceflow_with_http_info(traceflow_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.get_traceflow ...'
      end
      # verify the required parameter 'traceflow_id' is set
      if @api_client.config.client_side_validation && traceflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'traceflow_id' when calling ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.get_traceflow"
      end
      # resource path
      local_var_path = '/traceflows/{traceflow-id}'.sub('{' + 'traceflow-id' + '}', traceflow_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Traceflow')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi#get_traceflow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get observations for the Traceflow round
    # Get observations for the Traceflow round
    # @param traceflow_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :component_name Observations having the given component name will be listed.
    # @option opts [String] :component_type Observations having the given component type will be listed.
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :resource_type The type of observations that will be listed.
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :transport_node_name Observations having the given transport node name will be listed.
    # @return [TraceflowObservationListResult]
    def get_traceflow_observations(traceflow_id, opts = {})
      data, _status_code, _headers = get_traceflow_observations_with_http_info(traceflow_id, opts)
      data
    end

    # Get observations for the Traceflow round
    # Get observations for the Traceflow round
    # @param traceflow_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :component_name Observations having the given component name will be listed.
    # @option opts [String] :component_type Observations having the given component type will be listed.
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :resource_type The type of observations that will be listed.
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :transport_node_name Observations having the given transport node name will be listed.
    # @return [Array<(TraceflowObservationListResult, Fixnum, Hash)>] TraceflowObservationListResult data, response status code and response headers
    def get_traceflow_observations_with_http_info(traceflow_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.get_traceflow_observations ...'
      end
      # verify the required parameter 'traceflow_id' is set
      if @api_client.config.client_side_validation && traceflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'traceflow_id' when calling ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.get_traceflow_observations"
      end
      if @api_client.config.client_side_validation && opts[:'component_type'] && !['PHYSICAL', 'LR', 'LS', 'DFW', 'BRIDGE', 'EDGE_TUNNEL', 'EDGE_HOSTSWITCH', 'FW_BRIDGE', 'LOAD_BALANCER', 'NAT', 'IPSEC', 'SERVICE_INSERTION', 'VMC', 'EDGE_FW', 'UNKNOWN'].include?(opts[:'component_type'])
        fail ArgumentError, 'invalid value for "component_type", must be one of PHYSICAL, LR, LS, DFW, BRIDGE, EDGE_TUNNEL, EDGE_HOSTSWITCH, FW_BRIDGE, LOAD_BALANCER, NAT, IPSEC, SERVICE_INSERTION, VMC, EDGE_FW, UNKNOWN'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.get_traceflow_observations, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.get_traceflow_observations, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'resource_type'] && !['TraceflowObservationForwarded', 'TraceflowObservationDropped', 'TraceflowObservationDelivered', 'TraceflowObservationReceived', 'TraceflowObservationForwardedLogical', 'TraceflowObservationDroppedLogical', 'TraceflowObservationReceivedLogical', 'TraceflowObservationReplicationLogical', 'TraceflowObservationRelayedLogical'].include?(opts[:'resource_type'])
        fail ArgumentError, 'invalid value for "resource_type", must be one of TraceflowObservationForwarded, TraceflowObservationDropped, TraceflowObservationDelivered, TraceflowObservationReceived, TraceflowObservationForwardedLogical, TraceflowObservationDroppedLogical, TraceflowObservationReceivedLogical, TraceflowObservationReplicationLogical, TraceflowObservationRelayedLogical'
      end
      # resource path
      local_var_path = '/traceflows/{traceflow-id}/observations'.sub('{' + 'traceflow-id' + '}', traceflow_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'component_name'] = opts[:'component_name'] if !opts[:'component_name'].nil?
      query_params[:'component_type'] = opts[:'component_type'] if !opts[:'component_type'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'resource_type'] = opts[:'resource_type'] if !opts[:'resource_type'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'transport_node_name'] = opts[:'transport_node_name'] if !opts[:'transport_node_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TraceflowObservationListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi#get_traceflow_observations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all Traceflow rounds
    # List all Traceflow rounds; if a logical port id is given as a query parameter, only those originated from the logical port are returned. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :lport_id id of the source logical port where the trace flows originated
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [TraceflowListResult]
    def list_traceflows(opts = {})
      data, _status_code, _headers = list_traceflows_with_http_info(opts)
      data
    end

    # List all Traceflow rounds
    # List all Traceflow rounds; if a logical port id is given as a query parameter, only those originated from the logical port are returned. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :lport_id id of the source logical port where the trace flows originated
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(TraceflowListResult, Fixnum, Hash)>] TraceflowListResult data, response status code and response headers
    def list_traceflows_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.list_traceflows ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.list_traceflows, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi.list_traceflows, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/traceflows'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'lport_id'] = opts[:'lport_id'] if !opts[:'lport_id'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TraceflowListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringTraceflowApi#list_traceflows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
