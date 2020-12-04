=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXT
  class SystemAdministrationSettingsLicensesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Accept end user license agreement 
    # Accept end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def accept_eula(opts = {})
      accept_eula_with_http_info(opts)
      nil
    end

    # Accept end user license agreement 
    # Accept end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def accept_eula_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsLicensesApi.accept_eula ...'
      end
      # resource path
      local_var_path = '/eula/accept'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsLicensesApi#accept_eula\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return the acceptance status of end user license agreement 
    # Return the acceptance status of end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [EULAAcceptance]
    def get_eula_acceptance(opts = {})
      data, _status_code, _headers = get_eula_acceptance_with_http_info(opts)
      data
    end

    # Return the acceptance status of end user license agreement 
    # Return the acceptance status of end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EULAAcceptance, Fixnum, Hash)>] EULAAcceptance data, response status code and response headers
    def get_eula_acceptance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsLicensesApi.get_eula_acceptance ...'
      end
      # resource path
      local_var_path = '/eula/acceptance'

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
        :return_type => 'EULAAcceptance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsLicensesApi#get_eula_acceptance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return the content of end user license agreement 
    # Return the content of end user license agreement in the specified format. By default, it's pure string without line break 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :value_format End User License Agreement content output format
    # @return [EULAContent]
    def get_eula_content(opts = {})
      data, _status_code, _headers = get_eula_content_with_http_info(opts)
      data
    end

    # Return the content of end user license agreement 
    # Return the content of end user license agreement in the specified format. By default, it&#39;s pure string without line break 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :value_format End User License Agreement content output format
    # @return [Array<(EULAContent, Fixnum, Hash)>] EULAContent data, response status code and response headers
    def get_eula_content_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsLicensesApi.get_eula_content ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsLicensesApi.get_eula_content, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsLicensesApi.get_eula_content, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/eula/content'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'value_format'] = opts[:'value_format'] if !opts[:'value_format'].nil?

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
        :return_type => 'EULAContent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsLicensesApi#get_eula_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
