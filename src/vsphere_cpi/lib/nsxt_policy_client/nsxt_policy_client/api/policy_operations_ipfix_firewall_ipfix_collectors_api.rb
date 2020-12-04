=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXT
  class PolicyOperationsIPFIXFirewallIPFIXCollectorsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create or Replace IPFIX dfw collector profile
    # Create or Replace IPFIX dfw collector profile. IPFIX data will be sent to IPFIX collector port. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector profile id
    # @param ipfixdfw_collector_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [IPFIXDFWCollectorProfile]
    def create_or_replace_ipfixdfw_collector_profile(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts = {})
      data, _status_code, _headers = create_or_replace_ipfixdfw_collector_profile_with_http_info(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts)
      data
    end

    # Create or Replace IPFIX dfw collector profile
    # Create or Replace IPFIX dfw collector profile. IPFIX data will be sent to IPFIX collector port. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector profile id
    # @param ipfixdfw_collector_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(IPFIXDFWCollectorProfile, Fixnum, Hash)>] IPFIXDFWCollectorProfile data, response status code and response headers
    def create_or_replace_ipfixdfw_collector_profile_with_http_info(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.create_or_replace_ipfixdfw_collector_profile ...'
      end
      # verify the required parameter 'ipfix_dfw_collector_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_dfw_collector_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_dfw_collector_profile_id' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.create_or_replace_ipfixdfw_collector_profile"
      end
      # verify the required parameter 'ipfixdfw_collector_profile' is set
      if @api_client.config.client_side_validation && ipfixdfw_collector_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ipfixdfw_collector_profile' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.create_or_replace_ipfixdfw_collector_profile"
      end
      # resource path
      local_var_path = '/global-infra/ipfix-dfw-collector-profiles/{ipfix-dfw-collector-profile-id}'.sub('{' + 'ipfix-dfw-collector-profile-id' + '}', ipfix_dfw_collector_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfixdfw_collector_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IPFIXDFWCollectorProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi#create_or_replace_ipfixdfw_collector_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or Replace IPFIX dfw collector profile
    # Create or Replace IPFIX dfw collector profile. IPFIX data will be sent to IPFIX collector port. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector profile id
    # @param ipfixdfw_collector_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [IPFIXDFWCollectorProfile]
    def create_or_replace_ipfixdfw_collector_profile_0(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts = {})
      data, _status_code, _headers = create_or_replace_ipfixdfw_collector_profile_0_with_http_info(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts)
      data
    end

    # Create or Replace IPFIX dfw collector profile
    # Create or Replace IPFIX dfw collector profile. IPFIX data will be sent to IPFIX collector port. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector profile id
    # @param ipfixdfw_collector_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(IPFIXDFWCollectorProfile, Fixnum, Hash)>] IPFIXDFWCollectorProfile data, response status code and response headers
    def create_or_replace_ipfixdfw_collector_profile_0_with_http_info(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.create_or_replace_ipfixdfw_collector_profile_0 ...'
      end
      # verify the required parameter 'ipfix_dfw_collector_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_dfw_collector_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_dfw_collector_profile_id' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.create_or_replace_ipfixdfw_collector_profile_0"
      end
      # verify the required parameter 'ipfixdfw_collector_profile' is set
      if @api_client.config.client_side_validation && ipfixdfw_collector_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ipfixdfw_collector_profile' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.create_or_replace_ipfixdfw_collector_profile_0"
      end
      # resource path
      local_var_path = '/infra/ipfix-dfw-collector-profiles/{ipfix-dfw-collector-profile-id}'.sub('{' + 'ipfix-dfw-collector-profile-id' + '}', ipfix_dfw_collector_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfixdfw_collector_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IPFIXDFWCollectorProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi#create_or_replace_ipfixdfw_collector_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete IPFIX dfw Collector profile
    # API deletes IPFIX dfw collector profile. Flow forwarding to collector will be stopped. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector Profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def delete_ipfixdfw_collector_profile(ipfix_dfw_collector_profile_id, opts = {})
      delete_ipfixdfw_collector_profile_with_http_info(ipfix_dfw_collector_profile_id, opts)
      nil
    end

    # Delete IPFIX dfw Collector profile
    # API deletes IPFIX dfw collector profile. Flow forwarding to collector will be stopped. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector Profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_ipfixdfw_collector_profile_with_http_info(ipfix_dfw_collector_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.delete_ipfixdfw_collector_profile ...'
      end
      # verify the required parameter 'ipfix_dfw_collector_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_dfw_collector_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_dfw_collector_profile_id' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.delete_ipfixdfw_collector_profile"
      end
      # resource path
      local_var_path = '/global-infra/ipfix-dfw-collector-profiles/{ipfix-dfw-collector-profile-id}'.sub('{' + 'ipfix-dfw-collector-profile-id' + '}', ipfix_dfw_collector_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

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
        @api_client.config.logger.debug "API called: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi#delete_ipfixdfw_collector_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete IPFIX dfw Collector profile
    # API deletes IPFIX dfw collector profile. Flow forwarding to collector will be stopped. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector Profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def delete_ipfixdfw_collector_profile_0(ipfix_dfw_collector_profile_id, opts = {})
      delete_ipfixdfw_collector_profile_0_with_http_info(ipfix_dfw_collector_profile_id, opts)
      nil
    end

    # Delete IPFIX dfw Collector profile
    # API deletes IPFIX dfw collector profile. Flow forwarding to collector will be stopped. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector Profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_ipfixdfw_collector_profile_0_with_http_info(ipfix_dfw_collector_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.delete_ipfixdfw_collector_profile_0 ...'
      end
      # verify the required parameter 'ipfix_dfw_collector_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_dfw_collector_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_dfw_collector_profile_id' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.delete_ipfixdfw_collector_profile_0"
      end
      # resource path
      local_var_path = '/infra/ipfix-dfw-collector-profiles/{ipfix-dfw-collector-profile-id}'.sub('{' + 'ipfix-dfw-collector-profile-id' + '}', ipfix_dfw_collector_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

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
        @api_client.config.logger.debug "API called: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi#delete_ipfixdfw_collector_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List IPFIX Collector profiles.
    # API will provide list of all IPFIX dfw collector profiles and their details. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [IPFIXDFWCollectorProfileListResult]
    def list_ipfixdfw_collector_profiles(opts = {})
      data, _status_code, _headers = list_ipfixdfw_collector_profiles_with_http_info(opts)
      data
    end

    # List IPFIX Collector profiles.
    # API will provide list of all IPFIX dfw collector profiles and their details. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(IPFIXDFWCollectorProfileListResult, Fixnum, Hash)>] IPFIXDFWCollectorProfileListResult data, response status code and response headers
    def list_ipfixdfw_collector_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.list_ipfixdfw_collector_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.list_ipfixdfw_collector_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.list_ipfixdfw_collector_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/ipfix-dfw-collector-profiles'

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
        :return_type => 'IPFIXDFWCollectorProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi#list_ipfixdfw_collector_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List IPFIX Collector profiles.
    # API will provide list of all IPFIX dfw collector profiles and their details. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [IPFIXDFWCollectorProfileListResult]
    def list_ipfixdfw_collector_profiles_0(opts = {})
      data, _status_code, _headers = list_ipfixdfw_collector_profiles_0_with_http_info(opts)
      data
    end

    # List IPFIX Collector profiles.
    # API will provide list of all IPFIX dfw collector profiles and their details. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(IPFIXDFWCollectorProfileListResult, Fixnum, Hash)>] IPFIXDFWCollectorProfileListResult data, response status code and response headers
    def list_ipfixdfw_collector_profiles_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.list_ipfixdfw_collector_profiles_0 ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.list_ipfixdfw_collector_profiles_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.list_ipfixdfw_collector_profiles_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/ipfix-dfw-collector-profiles'

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
        :return_type => 'IPFIXDFWCollectorProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi#list_ipfixdfw_collector_profiles_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # IPFIX dfw collector profile id
    # Create a new IPFIX dfw collector profile if the IPFIX dfw collector profile with given id does not already exist. If the IPFIX dfw collector profile with the given id already exists, patch with the existing IPFIX dfw collector profile. 
    # @param ipfix_dfw_collector_profile_id 
    # @param ipfixdfw_collector_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def patch_ipfixdfw_collector_profile(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts = {})
      patch_ipfixdfw_collector_profile_with_http_info(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts)
      nil
    end

    # IPFIX dfw collector profile id
    # Create a new IPFIX dfw collector profile if the IPFIX dfw collector profile with given id does not already exist. If the IPFIX dfw collector profile with the given id already exists, patch with the existing IPFIX dfw collector profile. 
    # @param ipfix_dfw_collector_profile_id 
    # @param ipfixdfw_collector_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_ipfixdfw_collector_profile_with_http_info(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.patch_ipfixdfw_collector_profile ...'
      end
      # verify the required parameter 'ipfix_dfw_collector_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_dfw_collector_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_dfw_collector_profile_id' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.patch_ipfixdfw_collector_profile"
      end
      # verify the required parameter 'ipfixdfw_collector_profile' is set
      if @api_client.config.client_side_validation && ipfixdfw_collector_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ipfixdfw_collector_profile' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.patch_ipfixdfw_collector_profile"
      end
      # resource path
      local_var_path = '/global-infra/ipfix-dfw-collector-profiles/{ipfix-dfw-collector-profile-id}'.sub('{' + 'ipfix-dfw-collector-profile-id' + '}', ipfix_dfw_collector_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfixdfw_collector_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi#patch_ipfixdfw_collector_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # IPFIX dfw collector profile id
    # Create a new IPFIX dfw collector profile if the IPFIX dfw collector profile with given id does not already exist. If the IPFIX dfw collector profile with the given id already exists, patch with the existing IPFIX dfw collector profile. 
    # @param ipfix_dfw_collector_profile_id 
    # @param ipfixdfw_collector_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def patch_ipfixdfw_collector_profile_0(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts = {})
      patch_ipfixdfw_collector_profile_0_with_http_info(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts)
      nil
    end

    # IPFIX dfw collector profile id
    # Create a new IPFIX dfw collector profile if the IPFIX dfw collector profile with given id does not already exist. If the IPFIX dfw collector profile with the given id already exists, patch with the existing IPFIX dfw collector profile. 
    # @param ipfix_dfw_collector_profile_id 
    # @param ipfixdfw_collector_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_ipfixdfw_collector_profile_0_with_http_info(ipfix_dfw_collector_profile_id, ipfixdfw_collector_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.patch_ipfixdfw_collector_profile_0 ...'
      end
      # verify the required parameter 'ipfix_dfw_collector_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_dfw_collector_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_dfw_collector_profile_id' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.patch_ipfixdfw_collector_profile_0"
      end
      # verify the required parameter 'ipfixdfw_collector_profile' is set
      if @api_client.config.client_side_validation && ipfixdfw_collector_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ipfixdfw_collector_profile' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.patch_ipfixdfw_collector_profile_0"
      end
      # resource path
      local_var_path = '/infra/ipfix-dfw-collector-profiles/{ipfix-dfw-collector-profile-id}'.sub('{' + 'ipfix-dfw-collector-profile-id' + '}', ipfix_dfw_collector_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfixdfw_collector_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi#patch_ipfixdfw_collector_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get IPFIX dfw Collector profile
    # API will return details of IPFIX dfw collector profile. If profile does not exist, it will return 404. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector profile id
    # @param [Hash] opts the optional parameters
    # @return [IPFIXDFWCollectorProfile]
    def read_ipfixdfw_collector_profile(ipfix_dfw_collector_profile_id, opts = {})
      data, _status_code, _headers = read_ipfixdfw_collector_profile_with_http_info(ipfix_dfw_collector_profile_id, opts)
      data
    end

    # Get IPFIX dfw Collector profile
    # API will return details of IPFIX dfw collector profile. If profile does not exist, it will return 404. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector profile id
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPFIXDFWCollectorProfile, Fixnum, Hash)>] IPFIXDFWCollectorProfile data, response status code and response headers
    def read_ipfixdfw_collector_profile_with_http_info(ipfix_dfw_collector_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.read_ipfixdfw_collector_profile ...'
      end
      # verify the required parameter 'ipfix_dfw_collector_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_dfw_collector_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_dfw_collector_profile_id' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.read_ipfixdfw_collector_profile"
      end
      # resource path
      local_var_path = '/global-infra/ipfix-dfw-collector-profiles/{ipfix-dfw-collector-profile-id}'.sub('{' + 'ipfix-dfw-collector-profile-id' + '}', ipfix_dfw_collector_profile_id.to_s)

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
        :return_type => 'IPFIXDFWCollectorProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi#read_ipfixdfw_collector_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get IPFIX dfw Collector profile
    # API will return details of IPFIX dfw collector profile. If profile does not exist, it will return 404. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector profile id
    # @param [Hash] opts the optional parameters
    # @return [IPFIXDFWCollectorProfile]
    def read_ipfixdfw_collector_profile_0(ipfix_dfw_collector_profile_id, opts = {})
      data, _status_code, _headers = read_ipfixdfw_collector_profile_0_with_http_info(ipfix_dfw_collector_profile_id, opts)
      data
    end

    # Get IPFIX dfw Collector profile
    # API will return details of IPFIX dfw collector profile. If profile does not exist, it will return 404. 
    # @param ipfix_dfw_collector_profile_id IPFIX dfw collector profile id
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPFIXDFWCollectorProfile, Fixnum, Hash)>] IPFIXDFWCollectorProfile data, response status code and response headers
    def read_ipfixdfw_collector_profile_0_with_http_info(ipfix_dfw_collector_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.read_ipfixdfw_collector_profile_0 ...'
      end
      # verify the required parameter 'ipfix_dfw_collector_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_dfw_collector_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_dfw_collector_profile_id' when calling PolicyOperationsIPFIXFirewallIPFIXCollectorsApi.read_ipfixdfw_collector_profile_0"
      end
      # resource path
      local_var_path = '/infra/ipfix-dfw-collector-profiles/{ipfix-dfw-collector-profile-id}'.sub('{' + 'ipfix-dfw-collector-profile-id' + '}', ipfix_dfw_collector_profile_id.to_s)

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
        :return_type => 'IPFIXDFWCollectorProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOperationsIPFIXFirewallIPFIXCollectorsApi#read_ipfixdfw_collector_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
