=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXT
  class PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create or update Gateway QoS profile
    # If profile with the qos-profile-id is not already present, create a new gateway QoS profile instance. If it already exists, replace the gateway QoS profile instance with this object. 
    # @param qos_profile_id 
    # @param gateway_qos_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [GatewayQosProfile]
    def create_or_replace_gateway_qos_profile(qos_profile_id, gateway_qos_profile, opts = {})
      data, _status_code, _headers = create_or_replace_gateway_qos_profile_with_http_info(qos_profile_id, gateway_qos_profile, opts)
      data
    end

    # Create or update Gateway QoS profile
    # If profile with the qos-profile-id is not already present, create a new gateway QoS profile instance. If it already exists, replace the gateway QoS profile instance with this object. 
    # @param qos_profile_id 
    # @param gateway_qos_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(GatewayQosProfile, Fixnum, Hash)>] GatewayQosProfile data, response status code and response headers
    def create_or_replace_gateway_qos_profile_with_http_info(qos_profile_id, gateway_qos_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.create_or_replace_gateway_qos_profile ...'
      end
      # verify the required parameter 'qos_profile_id' is set
      if @api_client.config.client_side_validation && qos_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'qos_profile_id' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.create_or_replace_gateway_qos_profile"
      end
      # verify the required parameter 'gateway_qos_profile' is set
      if @api_client.config.client_side_validation && gateway_qos_profile.nil?
        fail ArgumentError, "Missing the required parameter 'gateway_qos_profile' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.create_or_replace_gateway_qos_profile"
      end
      # resource path
      local_var_path = '/global-infra/gateway-qos-profiles/{qos-profile-id}'.sub('{' + 'qos-profile-id' + '}', qos_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(gateway_qos_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GatewayQosProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi#create_or_replace_gateway_qos_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update Gateway QoS profile
    # If profile with the qos-profile-id is not already present, create a new gateway QoS profile instance. If it already exists, replace the gateway QoS profile instance with this object. 
    # @param qos_profile_id 
    # @param gateway_qos_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [GatewayQosProfile]
    def create_or_replace_gateway_qos_profile_0(qos_profile_id, gateway_qos_profile, opts = {})
      data, _status_code, _headers = create_or_replace_gateway_qos_profile_0_with_http_info(qos_profile_id, gateway_qos_profile, opts)
      data
    end

    # Create or update Gateway QoS profile
    # If profile with the qos-profile-id is not already present, create a new gateway QoS profile instance. If it already exists, replace the gateway QoS profile instance with this object. 
    # @param qos_profile_id 
    # @param gateway_qos_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(GatewayQosProfile, Fixnum, Hash)>] GatewayQosProfile data, response status code and response headers
    def create_or_replace_gateway_qos_profile_0_with_http_info(qos_profile_id, gateway_qos_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.create_or_replace_gateway_qos_profile_0 ...'
      end
      # verify the required parameter 'qos_profile_id' is set
      if @api_client.config.client_side_validation && qos_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'qos_profile_id' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.create_or_replace_gateway_qos_profile_0"
      end
      # verify the required parameter 'gateway_qos_profile' is set
      if @api_client.config.client_side_validation && gateway_qos_profile.nil?
        fail ArgumentError, "Missing the required parameter 'gateway_qos_profile' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.create_or_replace_gateway_qos_profile_0"
      end
      # resource path
      local_var_path = '/infra/gateway-qos-profiles/{qos-profile-id}'.sub('{' + 'qos-profile-id' + '}', qos_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(gateway_qos_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GatewayQosProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi#create_or_replace_gateway_qos_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete gateway QoS profile
    # Delete QoS profile
    # @param qos_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def delete_gateway_qos_profile(qos_profile_id, opts = {})
      delete_gateway_qos_profile_with_http_info(qos_profile_id, opts)
      nil
    end

    # Delete gateway QoS profile
    # Delete QoS profile
    # @param qos_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_gateway_qos_profile_with_http_info(qos_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.delete_gateway_qos_profile ...'
      end
      # verify the required parameter 'qos_profile_id' is set
      if @api_client.config.client_side_validation && qos_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'qos_profile_id' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.delete_gateway_qos_profile"
      end
      # resource path
      local_var_path = '/global-infra/gateway-qos-profiles/{qos-profile-id}'.sub('{' + 'qos-profile-id' + '}', qos_profile_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi#delete_gateway_qos_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete gateway QoS profile
    # Delete QoS profile
    # @param qos_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def delete_gateway_qos_profile_0(qos_profile_id, opts = {})
      delete_gateway_qos_profile_0_with_http_info(qos_profile_id, opts)
      nil
    end

    # Delete gateway QoS profile
    # Delete QoS profile
    # @param qos_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_gateway_qos_profile_0_with_http_info(qos_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.delete_gateway_qos_profile_0 ...'
      end
      # verify the required parameter 'qos_profile_id' is set
      if @api_client.config.client_side_validation && qos_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'qos_profile_id' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.delete_gateway_qos_profile_0"
      end
      # resource path
      local_var_path = '/infra/gateway-qos-profiles/{qos-profile-id}'.sub('{' + 'qos-profile-id' + '}', qos_profile_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi#delete_gateway_qos_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all gateway QoS profiles
    # Paginated list of all gateway QoS profle instances 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [GatewayQosProfileListResult]
    def list_gateway_qos_profiles(opts = {})
      data, _status_code, _headers = list_gateway_qos_profiles_with_http_info(opts)
      data
    end

    # List all gateway QoS profiles
    # Paginated list of all gateway QoS profle instances 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(GatewayQosProfileListResult, Fixnum, Hash)>] GatewayQosProfileListResult data, response status code and response headers
    def list_gateway_qos_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.list_gateway_qos_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.list_gateway_qos_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.list_gateway_qos_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/gateway-qos-profiles'

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
        :return_type => 'GatewayQosProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi#list_gateway_qos_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all gateway QoS profiles
    # Paginated list of all gateway QoS profle instances 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [GatewayQosProfileListResult]
    def list_gateway_qos_profiles_0(opts = {})
      data, _status_code, _headers = list_gateway_qos_profiles_0_with_http_info(opts)
      data
    end

    # List all gateway QoS profiles
    # Paginated list of all gateway QoS profle instances 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(GatewayQosProfileListResult, Fixnum, Hash)>] GatewayQosProfileListResult data, response status code and response headers
    def list_gateway_qos_profiles_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.list_gateway_qos_profiles_0 ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.list_gateway_qos_profiles_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.list_gateway_qos_profiles_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/gateway-qos-profiles'

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
        :return_type => 'GatewayQosProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi#list_gateway_qos_profiles_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update Gateway QoS profile
    # If profile with the qos-profile-id is not already present, create a new gateway QoS profile instance. If it already exists, update the gateway QoS profile instance with specified attributes. 
    # @param qos_profile_id 
    # @param gateway_qos_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def patch_gateway_qos_profile(qos_profile_id, gateway_qos_profile, opts = {})
      patch_gateway_qos_profile_with_http_info(qos_profile_id, gateway_qos_profile, opts)
      nil
    end

    # Create or update Gateway QoS profile
    # If profile with the qos-profile-id is not already present, create a new gateway QoS profile instance. If it already exists, update the gateway QoS profile instance with specified attributes. 
    # @param qos_profile_id 
    # @param gateway_qos_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_gateway_qos_profile_with_http_info(qos_profile_id, gateway_qos_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.patch_gateway_qos_profile ...'
      end
      # verify the required parameter 'qos_profile_id' is set
      if @api_client.config.client_side_validation && qos_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'qos_profile_id' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.patch_gateway_qos_profile"
      end
      # verify the required parameter 'gateway_qos_profile' is set
      if @api_client.config.client_side_validation && gateway_qos_profile.nil?
        fail ArgumentError, "Missing the required parameter 'gateway_qos_profile' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.patch_gateway_qos_profile"
      end
      # resource path
      local_var_path = '/global-infra/gateway-qos-profiles/{qos-profile-id}'.sub('{' + 'qos-profile-id' + '}', qos_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(gateway_qos_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi#patch_gateway_qos_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update Gateway QoS profile
    # If profile with the qos-profile-id is not already present, create a new gateway QoS profile instance. If it already exists, update the gateway QoS profile instance with specified attributes. 
    # @param qos_profile_id 
    # @param gateway_qos_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def patch_gateway_qos_profile_0(qos_profile_id, gateway_qos_profile, opts = {})
      patch_gateway_qos_profile_0_with_http_info(qos_profile_id, gateway_qos_profile, opts)
      nil
    end

    # Create or update Gateway QoS profile
    # If profile with the qos-profile-id is not already present, create a new gateway QoS profile instance. If it already exists, update the gateway QoS profile instance with specified attributes. 
    # @param qos_profile_id 
    # @param gateway_qos_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_gateway_qos_profile_0_with_http_info(qos_profile_id, gateway_qos_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.patch_gateway_qos_profile_0 ...'
      end
      # verify the required parameter 'qos_profile_id' is set
      if @api_client.config.client_side_validation && qos_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'qos_profile_id' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.patch_gateway_qos_profile_0"
      end
      # verify the required parameter 'gateway_qos_profile' is set
      if @api_client.config.client_side_validation && gateway_qos_profile.nil?
        fail ArgumentError, "Missing the required parameter 'gateway_qos_profile' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.patch_gateway_qos_profile_0"
      end
      # resource path
      local_var_path = '/infra/gateway-qos-profiles/{qos-profile-id}'.sub('{' + 'qos-profile-id' + '}', qos_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(gateway_qos_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi#patch_gateway_qos_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read gateway QoS profile
    # Read gateway QoS profile
    # @param qos_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [GatewayQosProfile]
    def read_gateway_qos_profile(qos_profile_id, opts = {})
      data, _status_code, _headers = read_gateway_qos_profile_with_http_info(qos_profile_id, opts)
      data
    end

    # Read gateway QoS profile
    # Read gateway QoS profile
    # @param qos_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GatewayQosProfile, Fixnum, Hash)>] GatewayQosProfile data, response status code and response headers
    def read_gateway_qos_profile_with_http_info(qos_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.read_gateway_qos_profile ...'
      end
      # verify the required parameter 'qos_profile_id' is set
      if @api_client.config.client_side_validation && qos_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'qos_profile_id' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.read_gateway_qos_profile"
      end
      # resource path
      local_var_path = '/global-infra/gateway-qos-profiles/{qos-profile-id}'.sub('{' + 'qos-profile-id' + '}', qos_profile_id.to_s)

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
        :return_type => 'GatewayQosProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi#read_gateway_qos_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read gateway QoS profile
    # Read gateway QoS profile
    # @param qos_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [GatewayQosProfile]
    def read_gateway_qos_profile_0(qos_profile_id, opts = {})
      data, _status_code, _headers = read_gateway_qos_profile_0_with_http_info(qos_profile_id, opts)
      data
    end

    # Read gateway QoS profile
    # Read gateway QoS profile
    # @param qos_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GatewayQosProfile, Fixnum, Hash)>] GatewayQosProfile data, response status code and response headers
    def read_gateway_qos_profile_0_with_http_info(qos_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.read_gateway_qos_profile_0 ...'
      end
      # verify the required parameter 'qos_profile_id' is set
      if @api_client.config.client_side_validation && qos_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'qos_profile_id' when calling PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi.read_gateway_qos_profile_0"
      end
      # resource path
      local_var_path = '/infra/gateway-qos-profiles/{qos-profile-id}'.sub('{' + 'qos-profile-id' + '}', qos_profile_id.to_s)

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
        :return_type => 'GatewayQosProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkingProfilesGatewayQOSProfilesApi#read_gateway_qos_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
