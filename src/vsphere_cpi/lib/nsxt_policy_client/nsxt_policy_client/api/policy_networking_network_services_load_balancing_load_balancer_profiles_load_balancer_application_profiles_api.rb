=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXT
  class PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete LBAppProfile and all the entities contained by this LBAppProfile
    # Delete the LBAppProfile along with all the entities contained by this LBAppProfile. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere  (default to false)
    # @return [nil]
    def delete_lb_app_profile(lb_app_profile_id, opts = {})
      delete_lb_app_profile_with_http_info(lb_app_profile_id, opts)
      nil
    end

    # Delete LBAppProfile and all the entities contained by this LBAppProfile
    # Delete the LBAppProfile along with all the entities contained by this LBAppProfile. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_lb_app_profile_with_http_info(lb_app_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.delete_lb_app_profile ...'
      end
      # verify the required parameter 'lb_app_profile_id' is set
      if @api_client.config.client_side_validation && lb_app_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.delete_lb_app_profile"
      end
      # resource path
      local_var_path = '/infra/lb-app-profiles/{lb-app-profile-id}'.sub('{' + 'lb-app-profile-id' + '}', lb_app_profile_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi#delete_lb_app_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete LBAppProfile and all the entities contained by this LBAppProfile
    # Delete the LBAppProfile along with all the entities contained by this LBAppProfile. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere  (default to false)
    # @return [nil]
    def delete_lb_app_profile_0(lb_app_profile_id, opts = {})
      delete_lb_app_profile_0_with_http_info(lb_app_profile_id, opts)
      nil
    end

    # Delete LBAppProfile and all the entities contained by this LBAppProfile
    # Delete the LBAppProfile along with all the entities contained by this LBAppProfile. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_lb_app_profile_0_with_http_info(lb_app_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.delete_lb_app_profile_0 ...'
      end
      # verify the required parameter 'lb_app_profile_id' is set
      if @api_client.config.client_side_validation && lb_app_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.delete_lb_app_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/lb-app-profiles/{lb-app-profile-id}'.sub('{' + 'lb-app-profile-id' + '}', lb_app_profile_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi#delete_lb_app_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List LBAppProfiles
    # Paginated list of all LBAppProfiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [LBAppProfileListResult]
    def list_lb_app_profiles(opts = {})
      data, _status_code, _headers = list_lb_app_profiles_with_http_info(opts)
      data
    end

    # List LBAppProfiles
    # Paginated list of all LBAppProfiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(LBAppProfileListResult, Fixnum, Hash)>] LBAppProfileListResult data, response status code and response headers
    def list_lb_app_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.list_lb_app_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.list_lb_app_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.list_lb_app_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/lb-app-profiles'

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
        :return_type => 'LBAppProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi#list_lb_app_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List LBAppProfiles
    # Paginated list of all LBAppProfiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [LBAppProfileListResult]
    def list_lb_app_profiles_0(opts = {})
      data, _status_code, _headers = list_lb_app_profiles_0_with_http_info(opts)
      data
    end

    # List LBAppProfiles
    # Paginated list of all LBAppProfiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(LBAppProfileListResult, Fixnum, Hash)>] LBAppProfileListResult data, response status code and response headers
    def list_lb_app_profiles_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.list_lb_app_profiles_0 ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.list_lb_app_profiles_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.list_lb_app_profiles_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/lb-app-profiles'

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
        :return_type => 'LBAppProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi#list_lb_app_profiles_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a LBAppProfile
    # If a LBAppProfile with the lb-app-profile-id is not already present, create a new LBAppProfile. If it already exists, update the LBAppProfile. This is a full replace. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param lb_app_profile 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_lb_app_profile(lb_app_profile_id, lb_app_profile, opts = {})
      patch_lb_app_profile_with_http_info(lb_app_profile_id, lb_app_profile, opts)
      nil
    end

    # Create or update a LBAppProfile
    # If a LBAppProfile with the lb-app-profile-id is not already present, create a new LBAppProfile. If it already exists, update the LBAppProfile. This is a full replace. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param lb_app_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_lb_app_profile_with_http_info(lb_app_profile_id, lb_app_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.patch_lb_app_profile ...'
      end
      # verify the required parameter 'lb_app_profile_id' is set
      if @api_client.config.client_side_validation && lb_app_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.patch_lb_app_profile"
      end
      # verify the required parameter 'lb_app_profile' is set
      if @api_client.config.client_side_validation && lb_app_profile.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.patch_lb_app_profile"
      end
      # resource path
      local_var_path = '/infra/lb-app-profiles/{lb-app-profile-id}'.sub('{' + 'lb-app-profile-id' + '}', lb_app_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(lb_app_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi#patch_lb_app_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a LBAppProfile
    # If a LBAppProfile with the lb-app-profile-id is not already present, create a new LBAppProfile. If it already exists, update the LBAppProfile. This is a full replace. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param lb_app_profile 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_lb_app_profile_0(lb_app_profile_id, lb_app_profile, opts = {})
      patch_lb_app_profile_0_with_http_info(lb_app_profile_id, lb_app_profile, opts)
      nil
    end

    # Create or update a LBAppProfile
    # If a LBAppProfile with the lb-app-profile-id is not already present, create a new LBAppProfile. If it already exists, update the LBAppProfile. This is a full replace. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param lb_app_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_lb_app_profile_0_with_http_info(lb_app_profile_id, lb_app_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.patch_lb_app_profile_0 ...'
      end
      # verify the required parameter 'lb_app_profile_id' is set
      if @api_client.config.client_side_validation && lb_app_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.patch_lb_app_profile_0"
      end
      # verify the required parameter 'lb_app_profile' is set
      if @api_client.config.client_side_validation && lb_app_profile.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.patch_lb_app_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/lb-app-profiles/{lb-app-profile-id}'.sub('{' + 'lb-app-profile-id' + '}', lb_app_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(lb_app_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi#patch_lb_app_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read LBAppProfile
    # Read a LBAppProfile. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param [Hash] opts the optional parameters
    # @return [LBAppProfile]
    def read_lb_app_profile(lb_app_profile_id, opts = {})
      data, _status_code, _headers = read_lb_app_profile_with_http_info(lb_app_profile_id, opts)
      data
    end

    # Read LBAppProfile
    # Read a LBAppProfile. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(LBAppProfile, Fixnum, Hash)>] LBAppProfile data, response status code and response headers
    def read_lb_app_profile_with_http_info(lb_app_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.read_lb_app_profile ...'
      end
      # verify the required parameter 'lb_app_profile_id' is set
      if @api_client.config.client_side_validation && lb_app_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.read_lb_app_profile"
      end
      # resource path
      local_var_path = '/infra/lb-app-profiles/{lb-app-profile-id}'.sub('{' + 'lb-app-profile-id' + '}', lb_app_profile_id.to_s)

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
        :return_type => 'LBAppProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi#read_lb_app_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read LBAppProfile
    # Read a LBAppProfile. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param [Hash] opts the optional parameters
    # @return [LBAppProfile]
    def read_lb_app_profile_0(lb_app_profile_id, opts = {})
      data, _status_code, _headers = read_lb_app_profile_0_with_http_info(lb_app_profile_id, opts)
      data
    end

    # Read LBAppProfile
    # Read a LBAppProfile. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(LBAppProfile, Fixnum, Hash)>] LBAppProfile data, response status code and response headers
    def read_lb_app_profile_0_with_http_info(lb_app_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.read_lb_app_profile_0 ...'
      end
      # verify the required parameter 'lb_app_profile_id' is set
      if @api_client.config.client_side_validation && lb_app_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.read_lb_app_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/lb-app-profiles/{lb-app-profile-id}'.sub('{' + 'lb-app-profile-id' + '}', lb_app_profile_id.to_s)

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
        :return_type => 'LBAppProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi#read_lb_app_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a LBAppProfile
    # If a LBAppProfile with the lb-app-profile-id is not already present, create a new LBAppProfile. If it already exists, update the LBAppProfile. This is a full replace. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param lb_app_profile 
    # @param [Hash] opts the optional parameters
    # @return [LBAppProfile]
    def update_lb_app_profile(lb_app_profile_id, lb_app_profile, opts = {})
      data, _status_code, _headers = update_lb_app_profile_with_http_info(lb_app_profile_id, lb_app_profile, opts)
      data
    end

    # Create or update a LBAppProfile
    # If a LBAppProfile with the lb-app-profile-id is not already present, create a new LBAppProfile. If it already exists, update the LBAppProfile. This is a full replace. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param lb_app_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LBAppProfile, Fixnum, Hash)>] LBAppProfile data, response status code and response headers
    def update_lb_app_profile_with_http_info(lb_app_profile_id, lb_app_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.update_lb_app_profile ...'
      end
      # verify the required parameter 'lb_app_profile_id' is set
      if @api_client.config.client_side_validation && lb_app_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.update_lb_app_profile"
      end
      # verify the required parameter 'lb_app_profile' is set
      if @api_client.config.client_side_validation && lb_app_profile.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.update_lb_app_profile"
      end
      # resource path
      local_var_path = '/infra/lb-app-profiles/{lb-app-profile-id}'.sub('{' + 'lb-app-profile-id' + '}', lb_app_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(lb_app_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LBAppProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi#update_lb_app_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a LBAppProfile
    # If a LBAppProfile with the lb-app-profile-id is not already present, create a new LBAppProfile. If it already exists, update the LBAppProfile. This is a full replace. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param lb_app_profile 
    # @param [Hash] opts the optional parameters
    # @return [LBAppProfile]
    def update_lb_app_profile_0(lb_app_profile_id, lb_app_profile, opts = {})
      data, _status_code, _headers = update_lb_app_profile_0_with_http_info(lb_app_profile_id, lb_app_profile, opts)
      data
    end

    # Create or update a LBAppProfile
    # If a LBAppProfile with the lb-app-profile-id is not already present, create a new LBAppProfile. If it already exists, update the LBAppProfile. This is a full replace. 
    # @param lb_app_profile_id LBAppProfile ID
    # @param lb_app_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LBAppProfile, Fixnum, Hash)>] LBAppProfile data, response status code and response headers
    def update_lb_app_profile_0_with_http_info(lb_app_profile_id, lb_app_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.update_lb_app_profile_0 ...'
      end
      # verify the required parameter 'lb_app_profile_id' is set
      if @api_client.config.client_side_validation && lb_app_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile_id' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.update_lb_app_profile_0"
      end
      # verify the required parameter 'lb_app_profile' is set
      if @api_client.config.client_side_validation && lb_app_profile.nil?
        fail ArgumentError, "Missing the required parameter 'lb_app_profile' when calling PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi.update_lb_app_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/lb-app-profiles/{lb-app-profile-id}'.sub('{' + 'lb-app-profile-id' + '}', lb_app_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(lb_app_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LBAppProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesLoadBalancingLoadBalancerProfilesLoadBalancerApplicationProfilesApi#update_lb_app_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
