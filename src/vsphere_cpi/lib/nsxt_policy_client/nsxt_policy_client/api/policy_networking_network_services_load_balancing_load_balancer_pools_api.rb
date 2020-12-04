=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXT
  class PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete LBPool and all the entities contained by this LBPool
    # Delete the LBPool along with all the entities contained by this LBPool. 
    # @param lb_pool_id LBPool ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere  (default to false)
    # @return [nil]
    def delete_lb_pool(lb_pool_id, opts = {})
      delete_lb_pool_with_http_info(lb_pool_id, opts)
      nil
    end

    # Delete LBPool and all the entities contained by this LBPool
    # Delete the LBPool along with all the entities contained by this LBPool. 
    # @param lb_pool_id LBPool ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_lb_pool_with_http_info(lb_pool_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.delete_lb_pool ...'
      end
      # verify the required parameter 'lb_pool_id' is set
      if @api_client.config.client_side_validation && lb_pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.delete_lb_pool"
      end
      # resource path
      local_var_path = '/global-infra/lb-pools/{lb-pool-id}'.sub('{' + 'lb-pool-id' + '}', lb_pool_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

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
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi#delete_lb_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete LBPool and all the entities contained by this LBPool
    # Delete the LBPool along with all the entities contained by this LBPool. 
    # @param lb_pool_id LBPool ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere  (default to false)
    # @return [nil]
    def delete_lb_pool_0(lb_pool_id, opts = {})
      delete_lb_pool_0_with_http_info(lb_pool_id, opts)
      nil
    end

    # Delete LBPool and all the entities contained by this LBPool
    # Delete the LBPool along with all the entities contained by this LBPool. 
    # @param lb_pool_id LBPool ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_lb_pool_0_with_http_info(lb_pool_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.delete_lb_pool_0 ...'
      end
      # verify the required parameter 'lb_pool_id' is set
      if @api_client.config.client_side_validation && lb_pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.delete_lb_pool_0"
      end
      # resource path
      local_var_path = '/infra/lb-pools/{lb-pool-id}'.sub('{' + 'lb-pool-id' + '}', lb_pool_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

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
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi#delete_lb_pool_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List LBPools
    # Paginated list of all LBPools. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [LBPoolListResult]
    def list_lb_pools(opts = {})
      data, _status_code, _headers = list_lb_pools_with_http_info(opts)
      data
    end

    # List LBPools
    # Paginated list of all LBPools. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(LBPoolListResult, Fixnum, Hash)>] LBPoolListResult data, response status code and response headers
    def list_lb_pools_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.list_lb_pools ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.list_lb_pools, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.list_lb_pools, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/lb-pools'

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
        :return_type => 'LBPoolListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi#list_lb_pools\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List LBPools
    # Paginated list of all LBPools. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [LBPoolListResult]
    def list_lb_pools_0(opts = {})
      data, _status_code, _headers = list_lb_pools_0_with_http_info(opts)
      data
    end

    # List LBPools
    # Paginated list of all LBPools. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(LBPoolListResult, Fixnum, Hash)>] LBPoolListResult data, response status code and response headers
    def list_lb_pools_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.list_lb_pools_0 ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.list_lb_pools_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.list_lb_pools_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/lb-pools'

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
        :return_type => 'LBPoolListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi#list_lb_pools_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a LBPool
    # If a LBPool with the lb-pool-id is not already present, create a new LBPool. If it already exists, update the LBPool. This is a full replace. 
    # @param lb_pool_id LBPool ID
    # @param lb_pool 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_lb_pool(lb_pool_id, lb_pool, opts = {})
      patch_lb_pool_with_http_info(lb_pool_id, lb_pool, opts)
      nil
    end

    # Create or update a LBPool
    # If a LBPool with the lb-pool-id is not already present, create a new LBPool. If it already exists, update the LBPool. This is a full replace. 
    # @param lb_pool_id LBPool ID
    # @param lb_pool 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_lb_pool_with_http_info(lb_pool_id, lb_pool, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.patch_lb_pool ...'
      end
      # verify the required parameter 'lb_pool_id' is set
      if @api_client.config.client_side_validation && lb_pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.patch_lb_pool"
      end
      # verify the required parameter 'lb_pool' is set
      if @api_client.config.client_side_validation && lb_pool.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.patch_lb_pool"
      end
      # resource path
      local_var_path = '/global-infra/lb-pools/{lb-pool-id}'.sub('{' + 'lb-pool-id' + '}', lb_pool_id.to_s)

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
      post_body = @api_client.object_to_http_body(lb_pool)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi#patch_lb_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a LBPool
    # If a LBPool with the lb-pool-id is not already present, create a new LBPool. If it already exists, update the LBPool. This is a full replace. 
    # @param lb_pool_id LBPool ID
    # @param lb_pool 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_lb_pool_0(lb_pool_id, lb_pool, opts = {})
      patch_lb_pool_0_with_http_info(lb_pool_id, lb_pool, opts)
      nil
    end

    # Create or update a LBPool
    # If a LBPool with the lb-pool-id is not already present, create a new LBPool. If it already exists, update the LBPool. This is a full replace. 
    # @param lb_pool_id LBPool ID
    # @param lb_pool 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_lb_pool_0_with_http_info(lb_pool_id, lb_pool, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.patch_lb_pool_0 ...'
      end
      # verify the required parameter 'lb_pool_id' is set
      if @api_client.config.client_side_validation && lb_pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.patch_lb_pool_0"
      end
      # verify the required parameter 'lb_pool' is set
      if @api_client.config.client_side_validation && lb_pool.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.patch_lb_pool_0"
      end
      # resource path
      local_var_path = '/infra/lb-pools/{lb-pool-id}'.sub('{' + 'lb-pool-id' + '}', lb_pool_id.to_s)

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
      post_body = @api_client.object_to_http_body(lb_pool)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi#patch_lb_pool_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read LBPool
    # Read a LBPool. 
    # @param lb_pool_id LBPool ID
    # @param [Hash] opts the optional parameters
    # @return [LBPool]
    def read_lb_pool(lb_pool_id, opts = {})
      data, _status_code, _headers = read_lb_pool_with_http_info(lb_pool_id, opts)
      data
    end

    # Read LBPool
    # Read a LBPool. 
    # @param lb_pool_id LBPool ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(LBPool, Fixnum, Hash)>] LBPool data, response status code and response headers
    def read_lb_pool_with_http_info(lb_pool_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.read_lb_pool ...'
      end
      # verify the required parameter 'lb_pool_id' is set
      if @api_client.config.client_side_validation && lb_pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.read_lb_pool"
      end
      # resource path
      local_var_path = '/global-infra/lb-pools/{lb-pool-id}'.sub('{' + 'lb-pool-id' + '}', lb_pool_id.to_s)

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
        :return_type => 'LBPool')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi#read_lb_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read LBPool
    # Read a LBPool. 
    # @param lb_pool_id LBPool ID
    # @param [Hash] opts the optional parameters
    # @return [LBPool]
    def read_lb_pool_0(lb_pool_id, opts = {})
      data, _status_code, _headers = read_lb_pool_0_with_http_info(lb_pool_id, opts)
      data
    end

    # Read LBPool
    # Read a LBPool. 
    # @param lb_pool_id LBPool ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(LBPool, Fixnum, Hash)>] LBPool data, response status code and response headers
    def read_lb_pool_0_with_http_info(lb_pool_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.read_lb_pool_0 ...'
      end
      # verify the required parameter 'lb_pool_id' is set
      if @api_client.config.client_side_validation && lb_pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.read_lb_pool_0"
      end
      # resource path
      local_var_path = '/infra/lb-pools/{lb-pool-id}'.sub('{' + 'lb-pool-id' + '}', lb_pool_id.to_s)

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
        :return_type => 'LBPool')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi#read_lb_pool_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a LBPool
    # If a LBPool with the lb-pool-id is not already present, create a new LBPool. If it already exists, update the LBPool. This is a full replace. 
    # @param lb_pool_id LBPool ID
    # @param lb_pool 
    # @param [Hash] opts the optional parameters
    # @return [LBPool]
    def update_lb_pool(lb_pool_id, lb_pool, opts = {})
      data, _status_code, _headers = update_lb_pool_with_http_info(lb_pool_id, lb_pool, opts)
      data
    end

    # Create or update a LBPool
    # If a LBPool with the lb-pool-id is not already present, create a new LBPool. If it already exists, update the LBPool. This is a full replace. 
    # @param lb_pool_id LBPool ID
    # @param lb_pool 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LBPool, Fixnum, Hash)>] LBPool data, response status code and response headers
    def update_lb_pool_with_http_info(lb_pool_id, lb_pool, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.update_lb_pool ...'
      end
      # verify the required parameter 'lb_pool_id' is set
      if @api_client.config.client_side_validation && lb_pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.update_lb_pool"
      end
      # verify the required parameter 'lb_pool' is set
      if @api_client.config.client_side_validation && lb_pool.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.update_lb_pool"
      end
      # resource path
      local_var_path = '/global-infra/lb-pools/{lb-pool-id}'.sub('{' + 'lb-pool-id' + '}', lb_pool_id.to_s)

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
      post_body = @api_client.object_to_http_body(lb_pool)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LBPool')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi#update_lb_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a LBPool
    # If a LBPool with the lb-pool-id is not already present, create a new LBPool. If it already exists, update the LBPool. This is a full replace. 
    # @param lb_pool_id LBPool ID
    # @param lb_pool 
    # @param [Hash] opts the optional parameters
    # @return [LBPool]
    def update_lb_pool_0(lb_pool_id, lb_pool, opts = {})
      data, _status_code, _headers = update_lb_pool_0_with_http_info(lb_pool_id, lb_pool, opts)
      data
    end

    # Create or update a LBPool
    # If a LBPool with the lb-pool-id is not already present, create a new LBPool. If it already exists, update the LBPool. This is a full replace. 
    # @param lb_pool_id LBPool ID
    # @param lb_pool 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LBPool, Fixnum, Hash)>] LBPool data, response status code and response headers
    def update_lb_pool_0_with_http_info(lb_pool_id, lb_pool, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.update_lb_pool_0 ...'
      end
      # verify the required parameter 'lb_pool_id' is set
      if @api_client.config.client_side_validation && lb_pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.update_lb_pool_0"
      end
      # verify the required parameter 'lb_pool' is set
      if @api_client.config.client_side_validation && lb_pool.nil?
        fail ArgumentError, "Missing the required parameter 'lb_pool' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi.update_lb_pool_0"
      end
      # resource path
      local_var_path = '/infra/lb-pools/{lb-pool-id}'.sub('{' + 'lb-pool-id' + '}', lb_pool_id.to_s)

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
      post_body = @api_client.object_to_http_body(lb_pool)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LBPool')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerPoolsApi#update_lb_pool_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
