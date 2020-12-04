=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXT
  class PolicySystemConfigurationNSXPartialPatchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Fetch the policy partial patch configuration value.
    # Get Configuration values for nsx-partial-patch. By default partial patch is disbaled (i.e false). 
    # @param [Hash] opts the optional parameters
    # @return [PartialPatchConfig]
    def get_partial_patch_configuration(opts = {})
      data, _status_code, _headers = get_partial_patch_configuration_with_http_info(opts)
      data
    end

    # Fetch the policy partial patch configuration value.
    # Get Configuration values for nsx-partial-patch. By default partial patch is disbaled (i.e false). 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PartialPatchConfig, Fixnum, Hash)>] PartialPatchConfig data, response status code and response headers
    def get_partial_patch_configuration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySystemConfigurationNSXPartialPatchApi.get_partial_patch_configuration ...'
      end
      # resource path
      local_var_path = '/system-config/nsx-partial-patch-config'

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
        :return_type => 'PartialPatchConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySystemConfigurationNSXPartialPatchApi#get_partial_patch_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Saves the configuration for policy partial patch
    # Update partial patch configuration values. Only boolean value is allowed for enable_partial_patch 
    # @param partial_patch_config 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_partial_patch_config(partial_patch_config, opts = {})
      update_partial_patch_config_with_http_info(partial_patch_config, opts)
      nil
    end

    # Saves the configuration for policy partial patch
    # Update partial patch configuration values. Only boolean value is allowed for enable_partial_patch 
    # @param partial_patch_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_partial_patch_config_with_http_info(partial_patch_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySystemConfigurationNSXPartialPatchApi.update_partial_patch_config ...'
      end
      # verify the required parameter 'partial_patch_config' is set
      if @api_client.config.client_side_validation && partial_patch_config.nil?
        fail ArgumentError, "Missing the required parameter 'partial_patch_config' when calling PolicySystemConfigurationNSXPartialPatchApi.update_partial_patch_config"
      end
      # resource path
      local_var_path = '/system-config/nsx-partial-patch-config'

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
      post_body = @api_client.object_to_http_body(partial_patch_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySystemConfigurationNSXPartialPatchApi#update_partial_patch_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
