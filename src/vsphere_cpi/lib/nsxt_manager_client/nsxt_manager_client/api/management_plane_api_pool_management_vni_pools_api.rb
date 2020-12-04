=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiPoolManagementVniPoolsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List VNI Pools
    # Returns information about the default and configured virtual network identifier (VNI) pools for use when building logical network segments. Each virtual network has a unique ID called a VNI. Instead of creating a new VNI each time you need a new logical switch, you can instead allocate a VNI from a VNI pool. VNI pools are sometimes called segment ID pools. Each VNI pool has a range of usable VNIs. By default, there is one pool with two ranges [5000, 65535] and [65536, 75000]. To create multiple smaller pools, specify a smaller range for each pool such as 75001-75100 and 75101-75200. The VNI range determines the maximum number of logical switches that can be created in each network segment. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [VniPoolListResult]
    def list_vni_pools(opts = {})
      data, _status_code, _headers = list_vni_pools_with_http_info(opts)
      data
    end

    # List VNI Pools
    # Returns information about the default and configured virtual network identifier (VNI) pools for use when building logical network segments. Each virtual network has a unique ID called a VNI. Instead of creating a new VNI each time you need a new logical switch, you can instead allocate a VNI from a VNI pool. VNI pools are sometimes called segment ID pools. Each VNI pool has a range of usable VNIs. By default, there is one pool with two ranges [5000, 65535] and [65536, 75000]. To create multiple smaller pools, specify a smaller range for each pool such as 75001-75100 and 75101-75200. The VNI range determines the maximum number of logical switches that can be created in each network segment. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(VniPoolListResult, Fixnum, Hash)>] VniPoolListResult data, response status code and response headers
    def list_vni_pools_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiPoolManagementVniPoolsApi.list_vni_pools ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiPoolManagementVniPoolsApi.list_vni_pools, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiPoolManagementVniPoolsApi.list_vni_pools, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/pools/vni-pools'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
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
        :return_type => 'VniPoolListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiPoolManagementVniPoolsApi#list_vni_pools\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read VNI Pool
    # Returns information about the specified virtual network identifier (VNI) pool. 
    # @param pool_id VNI pool ID
    # @param [Hash] opts the optional parameters
    # @return [VniPool]
    def read_vni_pool(pool_id, opts = {})
      data, _status_code, _headers = read_vni_pool_with_http_info(pool_id, opts)
      data
    end

    # Read VNI Pool
    # Returns information about the specified virtual network identifier (VNI) pool. 
    # @param pool_id VNI pool ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(VniPool, Fixnum, Hash)>] VniPool data, response status code and response headers
    def read_vni_pool_with_http_info(pool_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiPoolManagementVniPoolsApi.read_vni_pool ...'
      end
      # verify the required parameter 'pool_id' is set
      if @api_client.config.client_side_validation && pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'pool_id' when calling ManagementPlaneApiPoolManagementVniPoolsApi.read_vni_pool"
      end
      # resource path
      local_var_path = '/pools/vni-pools/{pool-id}'.sub('{' + 'pool-id' + '}', pool_id.to_s)

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
        :return_type => 'VniPool')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiPoolManagementVniPoolsApi#read_vni_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a VNI Pool
    # Updates the specified VNI pool. Modifiable parameters include description, display_name and ranges. Ranges can be added, modified or deleted. Overlapping ranges are not allowed. Only range end can be modified for any existing range. Range shrinking or deletion is not allowed if there are any allocated VNIs. 
    # @param pool_id VNI pool ID
    # @param vni_pool 
    # @param [Hash] opts the optional parameters
    # @return [VniPool]
    def update_vni_pool(pool_id, vni_pool, opts = {})
      data, _status_code, _headers = update_vni_pool_with_http_info(pool_id, vni_pool, opts)
      data
    end

    # Update a VNI Pool
    # Updates the specified VNI pool. Modifiable parameters include description, display_name and ranges. Ranges can be added, modified or deleted. Overlapping ranges are not allowed. Only range end can be modified for any existing range. Range shrinking or deletion is not allowed if there are any allocated VNIs. 
    # @param pool_id VNI pool ID
    # @param vni_pool 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VniPool, Fixnum, Hash)>] VniPool data, response status code and response headers
    def update_vni_pool_with_http_info(pool_id, vni_pool, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiPoolManagementVniPoolsApi.update_vni_pool ...'
      end
      # verify the required parameter 'pool_id' is set
      if @api_client.config.client_side_validation && pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'pool_id' when calling ManagementPlaneApiPoolManagementVniPoolsApi.update_vni_pool"
      end
      # verify the required parameter 'vni_pool' is set
      if @api_client.config.client_side_validation && vni_pool.nil?
        fail ArgumentError, "Missing the required parameter 'vni_pool' when calling ManagementPlaneApiPoolManagementVniPoolsApi.update_vni_pool"
      end
      # resource path
      local_var_path = '/pools/vni-pools/{pool-id}'.sub('{' + 'pool-id' + '}', pool_id.to_s)

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
      post_body = @api_client.object_to_http_body(vni_pool)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VniPool')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiPoolManagementVniPoolsApi#update_vni_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
