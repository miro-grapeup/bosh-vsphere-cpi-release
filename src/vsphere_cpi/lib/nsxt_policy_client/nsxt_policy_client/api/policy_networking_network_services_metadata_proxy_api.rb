=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXTPolicy
  class PolicyNetworkingNetworkServicesMetadataProxyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete Metadata Proxy Config
    # API will delete Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_metadata_proxy_config(metadata_proxy_id, opts = {})
      delete_metadata_proxy_config_with_http_info(metadata_proxy_id, opts)
      nil
    end

    # Delete Metadata Proxy Config
    # API will delete Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_metadata_proxy_config_with_http_info(metadata_proxy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesMetadataProxyApi.delete_metadata_proxy_config ...'
      end
      # verify the required parameter 'metadata_proxy_id' is set
      if @api_client.config.client_side_validation && metadata_proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_id' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.delete_metadata_proxy_config"
      end
      # resource path
      local_var_path = '/infra/metadata-proxies/{metadata-proxy-id}'.sub('{' + 'metadata-proxy-id' + '}', metadata_proxy_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesMetadataProxyApi#delete_metadata_proxy_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Metadata Proxy Config
    # API will delete Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_metadata_proxy_config_0(metadata_proxy_id, opts = {})
      delete_metadata_proxy_config_0_with_http_info(metadata_proxy_id, opts)
      nil
    end

    # Delete Metadata Proxy Config
    # API will delete Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_metadata_proxy_config_0_with_http_info(metadata_proxy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesMetadataProxyApi.delete_metadata_proxy_config_0 ...'
      end
      # verify the required parameter 'metadata_proxy_id' is set
      if @api_client.config.client_side_validation && metadata_proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_id' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.delete_metadata_proxy_config_0"
      end
      # resource path
      local_var_path = '/global-infra/metadata-proxies/{metadata-proxy-id}'.sub('{' + 'metadata-proxy-id' + '}', metadata_proxy_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesMetadataProxyApi#delete_metadata_proxy_config_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Metadata Proxy Configurations
    # List all L2 Metadata Proxy Configurations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [MetadataProxyConfigListResult]
    def list_metadata_proxy_config(opts = {})
      data, _status_code, _headers = list_metadata_proxy_config_with_http_info(opts)
      data
    end

    # List Metadata Proxy Configurations
    # List all L2 Metadata Proxy Configurations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(MetadataProxyConfigListResult, Fixnum, Hash)>] MetadataProxyConfigListResult data, response status code and response headers
    def list_metadata_proxy_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesMetadataProxyApi.list_metadata_proxy_config ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesMetadataProxyApi.list_metadata_proxy_config, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesMetadataProxyApi.list_metadata_proxy_config, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/metadata-proxies'

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
        :return_type => 'MetadataProxyConfigListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesMetadataProxyApi#list_metadata_proxy_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Metadata Proxy Configurations
    # List all L2 Metadata Proxy Configurations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [MetadataProxyConfigListResult]
    def list_metadata_proxy_config_0(opts = {})
      data, _status_code, _headers = list_metadata_proxy_config_0_with_http_info(opts)
      data
    end

    # List Metadata Proxy Configurations
    # List all L2 Metadata Proxy Configurations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(MetadataProxyConfigListResult, Fixnum, Hash)>] MetadataProxyConfigListResult data, response status code and response headers
    def list_metadata_proxy_config_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesMetadataProxyApi.list_metadata_proxy_config_0 ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesMetadataProxyApi.list_metadata_proxy_config_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesMetadataProxyApi.list_metadata_proxy_config_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/metadata-proxies'

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
        :return_type => 'MetadataProxyConfigListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesMetadataProxyApi#list_metadata_proxy_config_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update Metadata Proxy Config
    # API will create or update Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param metadata_proxy_config 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_metadata_proxy_config(metadata_proxy_id, metadata_proxy_config, opts = {})
      patch_metadata_proxy_config_with_http_info(metadata_proxy_id, metadata_proxy_config, opts)
      nil
    end

    # Create or update Metadata Proxy Config
    # API will create or update Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param metadata_proxy_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_metadata_proxy_config_with_http_info(metadata_proxy_id, metadata_proxy_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesMetadataProxyApi.patch_metadata_proxy_config ...'
      end
      # verify the required parameter 'metadata_proxy_id' is set
      if @api_client.config.client_side_validation && metadata_proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_id' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.patch_metadata_proxy_config"
      end
      # verify the required parameter 'metadata_proxy_config' is set
      if @api_client.config.client_side_validation && metadata_proxy_config.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_config' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.patch_metadata_proxy_config"
      end
      # resource path
      local_var_path = '/infra/metadata-proxies/{metadata-proxy-id}'.sub('{' + 'metadata-proxy-id' + '}', metadata_proxy_id.to_s)

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
      post_body = @api_client.object_to_http_body(metadata_proxy_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesMetadataProxyApi#patch_metadata_proxy_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update Metadata Proxy Config
    # API will create or update Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param metadata_proxy_config 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_metadata_proxy_config_0(metadata_proxy_id, metadata_proxy_config, opts = {})
      patch_metadata_proxy_config_0_with_http_info(metadata_proxy_id, metadata_proxy_config, opts)
      nil
    end

    # Create or update Metadata Proxy Config
    # API will create or update Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param metadata_proxy_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_metadata_proxy_config_0_with_http_info(metadata_proxy_id, metadata_proxy_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesMetadataProxyApi.patch_metadata_proxy_config_0 ...'
      end
      # verify the required parameter 'metadata_proxy_id' is set
      if @api_client.config.client_side_validation && metadata_proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_id' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.patch_metadata_proxy_config_0"
      end
      # verify the required parameter 'metadata_proxy_config' is set
      if @api_client.config.client_side_validation && metadata_proxy_config.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_config' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.patch_metadata_proxy_config_0"
      end
      # resource path
      local_var_path = '/global-infra/metadata-proxies/{metadata-proxy-id}'.sub('{' + 'metadata-proxy-id' + '}', metadata_proxy_id.to_s)

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
      post_body = @api_client.object_to_http_body(metadata_proxy_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesMetadataProxyApi#patch_metadata_proxy_config_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Metadata Proxy Config
    # API will read Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param [Hash] opts the optional parameters
    # @return [MetadataProxyConfig]
    def read_metadata_proxy_config(metadata_proxy_id, opts = {})
      data, _status_code, _headers = read_metadata_proxy_config_with_http_info(metadata_proxy_id, opts)
      data
    end

    # Get Metadata Proxy Config
    # API will read Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataProxyConfig, Fixnum, Hash)>] MetadataProxyConfig data, response status code and response headers
    def read_metadata_proxy_config_with_http_info(metadata_proxy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesMetadataProxyApi.read_metadata_proxy_config ...'
      end
      # verify the required parameter 'metadata_proxy_id' is set
      if @api_client.config.client_side_validation && metadata_proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_id' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.read_metadata_proxy_config"
      end
      # resource path
      local_var_path = '/infra/metadata-proxies/{metadata-proxy-id}'.sub('{' + 'metadata-proxy-id' + '}', metadata_proxy_id.to_s)

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
        :return_type => 'MetadataProxyConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesMetadataProxyApi#read_metadata_proxy_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Metadata Proxy Config
    # API will read Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param [Hash] opts the optional parameters
    # @return [MetadataProxyConfig]
    def read_metadata_proxy_config_0(metadata_proxy_id, opts = {})
      data, _status_code, _headers = read_metadata_proxy_config_0_with_http_info(metadata_proxy_id, opts)
      data
    end

    # Get Metadata Proxy Config
    # API will read Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataProxyConfig, Fixnum, Hash)>] MetadataProxyConfig data, response status code and response headers
    def read_metadata_proxy_config_0_with_http_info(metadata_proxy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesMetadataProxyApi.read_metadata_proxy_config_0 ...'
      end
      # verify the required parameter 'metadata_proxy_id' is set
      if @api_client.config.client_side_validation && metadata_proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_id' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.read_metadata_proxy_config_0"
      end
      # resource path
      local_var_path = '/global-infra/metadata-proxies/{metadata-proxy-id}'.sub('{' + 'metadata-proxy-id' + '}', metadata_proxy_id.to_s)

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
        :return_type => 'MetadataProxyConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesMetadataProxyApi#read_metadata_proxy_config_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update Metadata Proxy Config
    # API will create or update Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param metadata_proxy_config 
    # @param [Hash] opts the optional parameters
    # @return [MetadataProxyConfig]
    def update_metadata_proxy_config(metadata_proxy_id, metadata_proxy_config, opts = {})
      data, _status_code, _headers = update_metadata_proxy_config_with_http_info(metadata_proxy_id, metadata_proxy_config, opts)
      data
    end

    # Create or update Metadata Proxy Config
    # API will create or update Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param metadata_proxy_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataProxyConfig, Fixnum, Hash)>] MetadataProxyConfig data, response status code and response headers
    def update_metadata_proxy_config_with_http_info(metadata_proxy_id, metadata_proxy_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesMetadataProxyApi.update_metadata_proxy_config ...'
      end
      # verify the required parameter 'metadata_proxy_id' is set
      if @api_client.config.client_side_validation && metadata_proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_id' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.update_metadata_proxy_config"
      end
      # verify the required parameter 'metadata_proxy_config' is set
      if @api_client.config.client_side_validation && metadata_proxy_config.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_config' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.update_metadata_proxy_config"
      end
      # resource path
      local_var_path = '/infra/metadata-proxies/{metadata-proxy-id}'.sub('{' + 'metadata-proxy-id' + '}', metadata_proxy_id.to_s)

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
      post_body = @api_client.object_to_http_body(metadata_proxy_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MetadataProxyConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesMetadataProxyApi#update_metadata_proxy_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update Metadata Proxy Config
    # API will create or update Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param metadata_proxy_config 
    # @param [Hash] opts the optional parameters
    # @return [MetadataProxyConfig]
    def update_metadata_proxy_config_0(metadata_proxy_id, metadata_proxy_config, opts = {})
      data, _status_code, _headers = update_metadata_proxy_config_0_with_http_info(metadata_proxy_id, metadata_proxy_config, opts)
      data
    end

    # Create or update Metadata Proxy Config
    # API will create or update Metadata Proxy Config with ID profile-id
    # @param metadata_proxy_id Metadata Proxy ID
    # @param metadata_proxy_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataProxyConfig, Fixnum, Hash)>] MetadataProxyConfig data, response status code and response headers
    def update_metadata_proxy_config_0_with_http_info(metadata_proxy_id, metadata_proxy_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesMetadataProxyApi.update_metadata_proxy_config_0 ...'
      end
      # verify the required parameter 'metadata_proxy_id' is set
      if @api_client.config.client_side_validation && metadata_proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_id' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.update_metadata_proxy_config_0"
      end
      # verify the required parameter 'metadata_proxy_config' is set
      if @api_client.config.client_side_validation && metadata_proxy_config.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy_config' when calling PolicyNetworkingNetworkServicesMetadataProxyApi.update_metadata_proxy_config_0"
      end
      # resource path
      local_var_path = '/global-infra/metadata-proxies/{metadata-proxy-id}'.sub('{' + 'metadata-proxy-id' + '}', metadata_proxy_id.to_s)

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
      post_body = @api_client.object_to_http_body(metadata_proxy_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MetadataProxyConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesMetadataProxyApi#update_metadata_proxy_config_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
