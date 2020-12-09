=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXTPolicy
  class PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create or update DHCP static binding
    # If binding with the binding-id is not already present, create a new DHCP static binding instance. If it already exists, replace the existing DHCP static binding instance with this object. 
    # @param segment_id 
    # @param binding_id 
    # @param dhcp_static_binding_config 
    # @param [Hash] opts the optional parameters
    # @return [DhcpStaticBindingConfig]
    def create_or_replace_infra_segment_dhcp_static_binding(segment_id, binding_id, dhcp_static_binding_config, opts = {})
      data, _status_code, _headers = create_or_replace_infra_segment_dhcp_static_binding_with_http_info(segment_id, binding_id, dhcp_static_binding_config, opts)
      data
    end

    # Create or update DHCP static binding
    # If binding with the binding-id is not already present, create a new DHCP static binding instance. If it already exists, replace the existing DHCP static binding instance with this object. 
    # @param segment_id 
    # @param binding_id 
    # @param dhcp_static_binding_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DhcpStaticBindingConfig, Fixnum, Hash)>] DhcpStaticBindingConfig data, response status code and response headers
    def create_or_replace_infra_segment_dhcp_static_binding_with_http_info(segment_id, binding_id, dhcp_static_binding_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.create_or_replace_infra_segment_dhcp_static_binding ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.create_or_replace_infra_segment_dhcp_static_binding"
      end
      # verify the required parameter 'binding_id' is set
      if @api_client.config.client_side_validation && binding_id.nil?
        fail ArgumentError, "Missing the required parameter 'binding_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.create_or_replace_infra_segment_dhcp_static_binding"
      end
      # verify the required parameter 'dhcp_static_binding_config' is set
      if @api_client.config.client_side_validation && dhcp_static_binding_config.nil?
        fail ArgumentError, "Missing the required parameter 'dhcp_static_binding_config' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.create_or_replace_infra_segment_dhcp_static_binding"
      end
      # resource path
      local_var_path = '/infra/segments/{segment-id}/dhcp-static-binding-configs/{binding-id}'.sub('{' + 'segment-id' + '}', segment_id.to_s).sub('{' + 'binding-id' + '}', binding_id.to_s)

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
      post_body = @api_client.object_to_http_body(dhcp_static_binding_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DhcpStaticBindingConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi#create_or_replace_infra_segment_dhcp_static_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update DHCP static binding
    # If binding with the binding-id is not already present, create a new DHCP static binding instance. If it already exists, replace the existing DHCP static binding instance with this object. 
    # @param segment_id 
    # @param binding_id 
    # @param dhcp_static_binding_config 
    # @param [Hash] opts the optional parameters
    # @return [DhcpStaticBindingConfig]
    def create_or_replace_infra_segment_dhcp_static_binding_0(segment_id, binding_id, dhcp_static_binding_config, opts = {})
      data, _status_code, _headers = create_or_replace_infra_segment_dhcp_static_binding_0_with_http_info(segment_id, binding_id, dhcp_static_binding_config, opts)
      data
    end

    # Create or update DHCP static binding
    # If binding with the binding-id is not already present, create a new DHCP static binding instance. If it already exists, replace the existing DHCP static binding instance with this object. 
    # @param segment_id 
    # @param binding_id 
    # @param dhcp_static_binding_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DhcpStaticBindingConfig, Fixnum, Hash)>] DhcpStaticBindingConfig data, response status code and response headers
    def create_or_replace_infra_segment_dhcp_static_binding_0_with_http_info(segment_id, binding_id, dhcp_static_binding_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.create_or_replace_infra_segment_dhcp_static_binding_0 ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.create_or_replace_infra_segment_dhcp_static_binding_0"
      end
      # verify the required parameter 'binding_id' is set
      if @api_client.config.client_side_validation && binding_id.nil?
        fail ArgumentError, "Missing the required parameter 'binding_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.create_or_replace_infra_segment_dhcp_static_binding_0"
      end
      # verify the required parameter 'dhcp_static_binding_config' is set
      if @api_client.config.client_side_validation && dhcp_static_binding_config.nil?
        fail ArgumentError, "Missing the required parameter 'dhcp_static_binding_config' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.create_or_replace_infra_segment_dhcp_static_binding_0"
      end
      # resource path
      local_var_path = '/global-infra/segments/{segment-id}/dhcp-static-binding-configs/{binding-id}'.sub('{' + 'segment-id' + '}', segment_id.to_s).sub('{' + 'binding-id' + '}', binding_id.to_s)

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
      post_body = @api_client.object_to_http_body(dhcp_static_binding_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DhcpStaticBindingConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi#create_or_replace_infra_segment_dhcp_static_binding_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete DHCP static binding
    # Delete DHCP static binding
    # @param segment_id 
    # @param binding_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_infra_segment_dhcp_static_binding(segment_id, binding_id, opts = {})
      delete_infra_segment_dhcp_static_binding_with_http_info(segment_id, binding_id, opts)
      nil
    end

    # Delete DHCP static binding
    # Delete DHCP static binding
    # @param segment_id 
    # @param binding_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_infra_segment_dhcp_static_binding_with_http_info(segment_id, binding_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.delete_infra_segment_dhcp_static_binding ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.delete_infra_segment_dhcp_static_binding"
      end
      # verify the required parameter 'binding_id' is set
      if @api_client.config.client_side_validation && binding_id.nil?
        fail ArgumentError, "Missing the required parameter 'binding_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.delete_infra_segment_dhcp_static_binding"
      end
      # resource path
      local_var_path = '/infra/segments/{segment-id}/dhcp-static-binding-configs/{binding-id}'.sub('{' + 'segment-id' + '}', segment_id.to_s).sub('{' + 'binding-id' + '}', binding_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi#delete_infra_segment_dhcp_static_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete DHCP static binding
    # Delete DHCP static binding
    # @param segment_id 
    # @param binding_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_infra_segment_dhcp_static_binding_0(segment_id, binding_id, opts = {})
      delete_infra_segment_dhcp_static_binding_0_with_http_info(segment_id, binding_id, opts)
      nil
    end

    # Delete DHCP static binding
    # Delete DHCP static binding
    # @param segment_id 
    # @param binding_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_infra_segment_dhcp_static_binding_0_with_http_info(segment_id, binding_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.delete_infra_segment_dhcp_static_binding_0 ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.delete_infra_segment_dhcp_static_binding_0"
      end
      # verify the required parameter 'binding_id' is set
      if @api_client.config.client_side_validation && binding_id.nil?
        fail ArgumentError, "Missing the required parameter 'binding_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.delete_infra_segment_dhcp_static_binding_0"
      end
      # resource path
      local_var_path = '/global-infra/segments/{segment-id}/dhcp-static-binding-configs/{binding-id}'.sub('{' + 'segment-id' + '}', segment_id.to_s).sub('{' + 'binding-id' + '}', binding_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi#delete_infra_segment_dhcp_static_binding_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all DHCP static bindings
    # Paginated list of all DHCP static binding instances 
    # @param segment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [DhcpStaticBindingConfigListResult]
    def list_infra_segment_dhcp_static_binding(segment_id, opts = {})
      data, _status_code, _headers = list_infra_segment_dhcp_static_binding_with_http_info(segment_id, opts)
      data
    end

    # List all DHCP static bindings
    # Paginated list of all DHCP static binding instances 
    # @param segment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(DhcpStaticBindingConfigListResult, Fixnum, Hash)>] DhcpStaticBindingConfigListResult data, response status code and response headers
    def list_infra_segment_dhcp_static_binding_with_http_info(segment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.list_infra_segment_dhcp_static_binding ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.list_infra_segment_dhcp_static_binding"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.list_infra_segment_dhcp_static_binding, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.list_infra_segment_dhcp_static_binding, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/segments/{segment-id}/dhcp-static-binding-configs'.sub('{' + 'segment-id' + '}', segment_id.to_s)

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
        :return_type => 'DhcpStaticBindingConfigListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi#list_infra_segment_dhcp_static_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all DHCP static bindings
    # Paginated list of all DHCP static binding instances 
    # @param segment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [DhcpStaticBindingConfigListResult]
    def list_infra_segment_dhcp_static_binding_0(segment_id, opts = {})
      data, _status_code, _headers = list_infra_segment_dhcp_static_binding_0_with_http_info(segment_id, opts)
      data
    end

    # List all DHCP static bindings
    # Paginated list of all DHCP static binding instances 
    # @param segment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(DhcpStaticBindingConfigListResult, Fixnum, Hash)>] DhcpStaticBindingConfigListResult data, response status code and response headers
    def list_infra_segment_dhcp_static_binding_0_with_http_info(segment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.list_infra_segment_dhcp_static_binding_0 ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.list_infra_segment_dhcp_static_binding_0"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.list_infra_segment_dhcp_static_binding_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.list_infra_segment_dhcp_static_binding_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/segments/{segment-id}/dhcp-static-binding-configs'.sub('{' + 'segment-id' + '}', segment_id.to_s)

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
        :return_type => 'DhcpStaticBindingConfigListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi#list_infra_segment_dhcp_static_binding_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update DHCP static binding
    # If binding with the binding-id is not already present, create a new DHCP static binding instance. If it already exists, replace the existing DHCP static binding instance with specified attributes. 
    # @param segment_id 
    # @param binding_id 
    # @param dhcp_static_binding_config 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_infra_segment_dhcp_static_binding(segment_id, binding_id, dhcp_static_binding_config, opts = {})
      patch_infra_segment_dhcp_static_binding_with_http_info(segment_id, binding_id, dhcp_static_binding_config, opts)
      nil
    end

    # Create or update DHCP static binding
    # If binding with the binding-id is not already present, create a new DHCP static binding instance. If it already exists, replace the existing DHCP static binding instance with specified attributes. 
    # @param segment_id 
    # @param binding_id 
    # @param dhcp_static_binding_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_infra_segment_dhcp_static_binding_with_http_info(segment_id, binding_id, dhcp_static_binding_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.patch_infra_segment_dhcp_static_binding ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.patch_infra_segment_dhcp_static_binding"
      end
      # verify the required parameter 'binding_id' is set
      if @api_client.config.client_side_validation && binding_id.nil?
        fail ArgumentError, "Missing the required parameter 'binding_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.patch_infra_segment_dhcp_static_binding"
      end
      # verify the required parameter 'dhcp_static_binding_config' is set
      if @api_client.config.client_side_validation && dhcp_static_binding_config.nil?
        fail ArgumentError, "Missing the required parameter 'dhcp_static_binding_config' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.patch_infra_segment_dhcp_static_binding"
      end
      # resource path
      local_var_path = '/infra/segments/{segment-id}/dhcp-static-binding-configs/{binding-id}'.sub('{' + 'segment-id' + '}', segment_id.to_s).sub('{' + 'binding-id' + '}', binding_id.to_s)

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
      post_body = @api_client.object_to_http_body(dhcp_static_binding_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi#patch_infra_segment_dhcp_static_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update DHCP static binding
    # If binding with the binding-id is not already present, create a new DHCP static binding instance. If it already exists, replace the existing DHCP static binding instance with specified attributes. 
    # @param segment_id 
    # @param binding_id 
    # @param dhcp_static_binding_config 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_infra_segment_dhcp_static_binding_0(segment_id, binding_id, dhcp_static_binding_config, opts = {})
      patch_infra_segment_dhcp_static_binding_0_with_http_info(segment_id, binding_id, dhcp_static_binding_config, opts)
      nil
    end

    # Create or update DHCP static binding
    # If binding with the binding-id is not already present, create a new DHCP static binding instance. If it already exists, replace the existing DHCP static binding instance with specified attributes. 
    # @param segment_id 
    # @param binding_id 
    # @param dhcp_static_binding_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_infra_segment_dhcp_static_binding_0_with_http_info(segment_id, binding_id, dhcp_static_binding_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.patch_infra_segment_dhcp_static_binding_0 ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.patch_infra_segment_dhcp_static_binding_0"
      end
      # verify the required parameter 'binding_id' is set
      if @api_client.config.client_side_validation && binding_id.nil?
        fail ArgumentError, "Missing the required parameter 'binding_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.patch_infra_segment_dhcp_static_binding_0"
      end
      # verify the required parameter 'dhcp_static_binding_config' is set
      if @api_client.config.client_side_validation && dhcp_static_binding_config.nil?
        fail ArgumentError, "Missing the required parameter 'dhcp_static_binding_config' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.patch_infra_segment_dhcp_static_binding_0"
      end
      # resource path
      local_var_path = '/global-infra/segments/{segment-id}/dhcp-static-binding-configs/{binding-id}'.sub('{' + 'segment-id' + '}', segment_id.to_s).sub('{' + 'binding-id' + '}', binding_id.to_s)

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
      post_body = @api_client.object_to_http_body(dhcp_static_binding_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi#patch_infra_segment_dhcp_static_binding_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read DHCP static binding
    # Read DHCP static binding
    # @param segment_id 
    # @param binding_id 
    # @param [Hash] opts the optional parameters
    # @return [DhcpStaticBindingConfig]
    def read_infra_segment_dhcp_static_binding(segment_id, binding_id, opts = {})
      data, _status_code, _headers = read_infra_segment_dhcp_static_binding_with_http_info(segment_id, binding_id, opts)
      data
    end

    # Read DHCP static binding
    # Read DHCP static binding
    # @param segment_id 
    # @param binding_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DhcpStaticBindingConfig, Fixnum, Hash)>] DhcpStaticBindingConfig data, response status code and response headers
    def read_infra_segment_dhcp_static_binding_with_http_info(segment_id, binding_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.read_infra_segment_dhcp_static_binding ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.read_infra_segment_dhcp_static_binding"
      end
      # verify the required parameter 'binding_id' is set
      if @api_client.config.client_side_validation && binding_id.nil?
        fail ArgumentError, "Missing the required parameter 'binding_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.read_infra_segment_dhcp_static_binding"
      end
      # resource path
      local_var_path = '/infra/segments/{segment-id}/dhcp-static-binding-configs/{binding-id}'.sub('{' + 'segment-id' + '}', segment_id.to_s).sub('{' + 'binding-id' + '}', binding_id.to_s)

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
        :return_type => 'DhcpStaticBindingConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi#read_infra_segment_dhcp_static_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read DHCP static binding
    # Read DHCP static binding
    # @param segment_id 
    # @param binding_id 
    # @param [Hash] opts the optional parameters
    # @return [DhcpStaticBindingConfig]
    def read_infra_segment_dhcp_static_binding_0(segment_id, binding_id, opts = {})
      data, _status_code, _headers = read_infra_segment_dhcp_static_binding_0_with_http_info(segment_id, binding_id, opts)
      data
    end

    # Read DHCP static binding
    # Read DHCP static binding
    # @param segment_id 
    # @param binding_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DhcpStaticBindingConfig, Fixnum, Hash)>] DhcpStaticBindingConfig data, response status code and response headers
    def read_infra_segment_dhcp_static_binding_0_with_http_info(segment_id, binding_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.read_infra_segment_dhcp_static_binding_0 ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.read_infra_segment_dhcp_static_binding_0"
      end
      # verify the required parameter 'binding_id' is set
      if @api_client.config.client_side_validation && binding_id.nil?
        fail ArgumentError, "Missing the required parameter 'binding_id' when calling PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi.read_infra_segment_dhcp_static_binding_0"
      end
      # resource path
      local_var_path = '/global-infra/segments/{segment-id}/dhcp-static-binding-configs/{binding-id}'.sub('{' + 'segment-id' + '}', segment_id.to_s).sub('{' + 'binding-id' + '}', binding_id.to_s)

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
        :return_type => 'DhcpStaticBindingConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingIPManagementDHCPDHCPStaticBindingsSegmentsBindingsApi#read_infra_segment_dhcp_static_binding_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
