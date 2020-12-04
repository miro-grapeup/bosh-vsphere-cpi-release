=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXT
  class FederationLocalManagerFullSynchronizationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get full sync state
    # Get full sync state.
    # @param full_sync_id 
    # @param [Hash] opts the optional parameters
    # @return [FullSyncState]
    def get_full_sync_states(full_sync_id, opts = {})
      data, _status_code, _headers = get_full_sync_states_with_http_info(full_sync_id, opts)
      data
    end

    # Get full sync state
    # Get full sync state.
    # @param full_sync_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FullSyncState, Fixnum, Hash)>] FullSyncState data, response status code and response headers
    def get_full_sync_states_with_http_info(full_sync_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FederationLocalManagerFullSynchronizationApi.get_full_sync_states ...'
      end
      # verify the required parameter 'full_sync_id' is set
      if @api_client.config.client_side_validation && full_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'full_sync_id' when calling FederationLocalManagerFullSynchronizationApi.get_full_sync_states"
      end
      # resource path
      local_var_path = '/global-infra/full-sync-states/{full-sync-id}'.sub('{' + 'full-sync-id' + '}', full_sync_id.to_s)

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
        :return_type => 'FullSyncState')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FederationLocalManagerFullSynchronizationApi#get_full_sync_states\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get full sync state
    # Get full sync state.
    # @param full_sync_id 
    # @param [Hash] opts the optional parameters
    # @return [FullSyncState]
    def get_full_sync_states_0(full_sync_id, opts = {})
      data, _status_code, _headers = get_full_sync_states_0_with_http_info(full_sync_id, opts)
      data
    end

    # Get full sync state
    # Get full sync state.
    # @param full_sync_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FullSyncState, Fixnum, Hash)>] FullSyncState data, response status code and response headers
    def get_full_sync_states_0_with_http_info(full_sync_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FederationLocalManagerFullSynchronizationApi.get_full_sync_states_0 ...'
      end
      # verify the required parameter 'full_sync_id' is set
      if @api_client.config.client_side_validation && full_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'full_sync_id' when calling FederationLocalManagerFullSynchronizationApi.get_full_sync_states_0"
      end
      # resource path
      local_var_path = '/infra/full-sync-states/{full-sync-id}'.sub('{' + 'full-sync-id' + '}', full_sync_id.to_s)

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
        :return_type => 'FullSyncState')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FederationLocalManagerFullSynchronizationApi#get_full_sync_states_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List full sync states
    # List full sync state.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [FullSyncStateListResult]
    def list_full_sync_states(opts = {})
      data, _status_code, _headers = list_full_sync_states_with_http_info(opts)
      data
    end

    # List full sync states
    # List full sync state.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(FullSyncStateListResult, Fixnum, Hash)>] FullSyncStateListResult data, response status code and response headers
    def list_full_sync_states_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FederationLocalManagerFullSynchronizationApi.list_full_sync_states ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling FederationLocalManagerFullSynchronizationApi.list_full_sync_states, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling FederationLocalManagerFullSynchronizationApi.list_full_sync_states, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/full-sync-states'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_mark_for_delete_objects'] = opts[:'include_mark_for_delete_objects'] if !opts[:'include_mark_for_delete_objects'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
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
        :return_type => 'FullSyncStateListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FederationLocalManagerFullSynchronizationApi#list_full_sync_states\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List full sync states
    # List full sync state.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [FullSyncStateListResult]
    def list_full_sync_states_0(opts = {})
      data, _status_code, _headers = list_full_sync_states_0_with_http_info(opts)
      data
    end

    # List full sync states
    # List full sync state.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(FullSyncStateListResult, Fixnum, Hash)>] FullSyncStateListResult data, response status code and response headers
    def list_full_sync_states_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FederationLocalManagerFullSynchronizationApi.list_full_sync_states_0 ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling FederationLocalManagerFullSynchronizationApi.list_full_sync_states_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling FederationLocalManagerFullSynchronizationApi.list_full_sync_states_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/full-sync-states'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_mark_for_delete_objects'] = opts[:'include_mark_for_delete_objects'] if !opts[:'include_mark_for_delete_objects'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
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
        :return_type => 'FullSyncStateListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FederationLocalManagerFullSynchronizationApi#list_full_sync_states_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
