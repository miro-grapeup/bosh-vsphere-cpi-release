=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXT
  class SystemAdministrationSettingsUserManagementRolesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Clone an already present role
    # The role with id <role> is cloned and the new id, name and description are the ones provided in the request body. 
    # @param role Role id
    # @param new_role 
    # @param [Hash] opts the optional parameters
    # @return [NewRole]
    def clone_role_clone(role, new_role, opts = {})
      data, _status_code, _headers = clone_role_clone_with_http_info(role, new_role, opts)
      data
    end

    # Clone an already present role
    # The role with id &lt;role&gt; is cloned and the new id, name and description are the ones provided in the request body. 
    # @param role Role id
    # @param new_role 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NewRole, Fixnum, Hash)>] NewRole data, response status code and response headers
    def clone_role_clone_with_http_info(role, new_role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.clone_role_clone ...'
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling SystemAdministrationSettingsUserManagementRolesApi.clone_role_clone"
      end
      # verify the required parameter 'new_role' is set
      if @api_client.config.client_side_validation && new_role.nil?
        fail ArgumentError, "Missing the required parameter 'new_role' when calling SystemAdministrationSettingsUserManagementRolesApi.clone_role_clone"
      end
      # resource path
      local_var_path = '/aaa/roles/{role}?action=clone'.sub('{' + 'role' + '}', role.to_s)

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
      post_body = @api_client.object_to_http_body(new_role)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NewRole')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#clone_role_clone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update custom role
    # Creates a new role with id as <role> if there does not exist any role with id <role>, else updates the existing role. 
    # @param role Custom role id
    # @param role_with_features 
    # @param [Hash] opts the optional parameters
    # @return [RoleWithFeatures]
    def create_or_update_role(role, role_with_features, opts = {})
      data, _status_code, _headers = create_or_update_role_with_http_info(role, role_with_features, opts)
      data
    end

    # Update custom role
    # Creates a new role with id as &lt;role&gt; if there does not exist any role with id &lt;role&gt;, else updates the existing role. 
    # @param role Custom role id
    # @param role_with_features 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleWithFeatures, Fixnum, Hash)>] RoleWithFeatures data, response status code and response headers
    def create_or_update_role_with_http_info(role, role_with_features, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.create_or_update_role ...'
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling SystemAdministrationSettingsUserManagementRolesApi.create_or_update_role"
      end
      # verify the required parameter 'role_with_features' is set
      if @api_client.config.client_side_validation && role_with_features.nil?
        fail ArgumentError, "Missing the required parameter 'role_with_features' when calling SystemAdministrationSettingsUserManagementRolesApi.create_or_update_role"
      end
      # resource path
      local_var_path = '/aaa/roles/{role}'.sub('{' + 'role' + '}', role.to_s)

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
      post_body = @api_client.object_to_http_body(role_with_features)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RoleWithFeatures')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#create_or_update_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Assign roles to User or Group
    # When assigning a user role, specify the user name with the same case as it appears in vIDM to access the NSX-T user interface. For example, if vIDM has the user name User1@example.com then the name attribute in the API call must be be User1@example.com and cannot be user1@example.com. 
    # @param role_binding 
    # @param [Hash] opts the optional parameters
    # @return [RoleBinding]
    def create_role_binding(role_binding, opts = {})
      data, _status_code, _headers = create_role_binding_with_http_info(role_binding, opts)
      data
    end

    # Assign roles to User or Group
    # When assigning a user role, specify the user name with the same case as it appears in vIDM to access the NSX-T user interface. For example, if vIDM has the user name User1@example.com then the name attribute in the API call must be be User1@example.com and cannot be user1@example.com. 
    # @param role_binding 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleBinding, Fixnum, Hash)>] RoleBinding data, response status code and response headers
    def create_role_binding_with_http_info(role_binding, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.create_role_binding ...'
      end
      # verify the required parameter 'role_binding' is set
      if @api_client.config.client_side_validation && role_binding.nil?
        fail ArgumentError, "Missing the required parameter 'role_binding' when calling SystemAdministrationSettingsUserManagementRolesApi.create_role_binding"
      end
      # resource path
      local_var_path = '/aaa/role-bindings'

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
      post_body = @api_client.object_to_http_body(role_binding)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RoleBinding')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#create_role_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete all stale role assignments
    # Delete all stale role assignments
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_all_stale_role_bindings_delete_stale_bindings(opts = {})
      delete_all_stale_role_bindings_delete_stale_bindings_with_http_info(opts)
      nil
    end

    # Delete all stale role assignments
    # Delete all stale role assignments
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_all_stale_role_bindings_delete_stale_bindings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.delete_all_stale_role_bindings_delete_stale_bindings ...'
      end
      # resource path
      local_var_path = '/aaa/role-bindings?action=delete_stale_bindings'

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
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#delete_all_stale_role_bindings_delete_stale_bindings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete custom role
    # If a role is assigned to a role binding then the deletion of the role is not allowed. Precanned roles cannot be deleted. 
    # @param role Custom role id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_role(role, opts = {})
      delete_role_with_http_info(role, opts)
      nil
    end

    # Delete custom role
    # If a role is assigned to a role binding then the deletion of the role is not allowed. Precanned roles cannot be deleted. 
    # @param role Custom role id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_role_with_http_info(role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.delete_role ...'
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling SystemAdministrationSettingsUserManagementRolesApi.delete_role"
      end
      # resource path
      local_var_path = '/aaa/roles/{role}'.sub('{' + 'role' + '}', role.to_s)

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
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#delete_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete user/group's roles assignment
    # Delete user/group's roles assignment
    # @param binding_id User/Group&#39;s id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_role_binding(binding_id, opts = {})
      delete_role_binding_with_http_info(binding_id, opts)
      nil
    end

    # Delete user/group&#39;s roles assignment
    # Delete user/group&#39;s roles assignment
    # @param binding_id User/Group&#39;s id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_role_binding_with_http_info(binding_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.delete_role_binding ...'
      end
      # verify the required parameter 'binding_id' is set
      if @api_client.config.client_side_validation && binding_id.nil?
        fail ArgumentError, "Missing the required parameter 'binding_id' when calling SystemAdministrationSettingsUserManagementRolesApi.delete_role_binding"
      end
      # resource path
      local_var_path = '/aaa/role-bindings/{binding-id}'.sub('{' + 'binding-id' + '}', binding_id.to_s)

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
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#delete_role_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all users and groups with their roles
    # Get all users and groups with their roles
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :identity_source_id Identity source ID
    # @option opts [String] :identity_source_type Identity source type
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :name User/Group name
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :role Role ID
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :type Type
    # @return [RoleBindingListResult]
    def get_all_role_bindings(opts = {})
      data, _status_code, _headers = get_all_role_bindings_with_http_info(opts)
      data
    end

    # Get all users and groups with their roles
    # Get all users and groups with their roles
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :identity_source_id Identity source ID
    # @option opts [String] :identity_source_type Identity source type
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :name User/Group name
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :role Role ID
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :type Type
    # @return [Array<(RoleBindingListResult, Fixnum, Hash)>] RoleBindingListResult data, response status code and response headers
    def get_all_role_bindings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.get_all_role_bindings ...'
      end
      if @api_client.config.client_side_validation && opts[:'identity_source_type'] && !['VIDM', 'LDAP', 'OIDC'].include?(opts[:'identity_source_type'])
        fail ArgumentError, 'invalid value for "identity_source_type", must be one of VIDM, LDAP, OIDC'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsUserManagementRolesApi.get_all_role_bindings, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsUserManagementRolesApi.get_all_role_bindings, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'type'] && !['remote_user', 'remote_group', 'local_user', 'principal_identity'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of remote_user, remote_group, local_user, principal_identity'
      end
      # resource path
      local_var_path = '/aaa/role-bindings'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'identity_source_id'] = opts[:'identity_source_id'] if !opts[:'identity_source_id'].nil?
      query_params[:'identity_source_type'] = opts[:'identity_source_type'] if !opts[:'identity_source_type'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'role'] = opts[:'role'] if !opts[:'role'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

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
        :return_type => 'RoleBindingListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#get_all_role_bindings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get information about all roles
    # Get information about all roles
    # @param [Hash] opts the optional parameters
    # @return [RoleListResult]
    def get_all_roles_info(opts = {})
      data, _status_code, _headers = get_all_roles_info_with_http_info(opts)
      data
    end

    # Get information about all roles
    # Get information about all roles
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleListResult, Fixnum, Hash)>] RoleListResult data, response status code and response headers
    def get_all_roles_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.get_all_roles_info ...'
      end
      # resource path
      local_var_path = '/aaa/roles'

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
        :return_type => 'RoleListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#get_all_roles_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get user/group's role information
    # Get user/group's role information
    # @param binding_id User/Group&#39;s id
    # @param [Hash] opts the optional parameters
    # @return [RoleBinding]
    def get_role_binding(binding_id, opts = {})
      data, _status_code, _headers = get_role_binding_with_http_info(binding_id, opts)
      data
    end

    # Get user/group&#39;s role information
    # Get user/group&#39;s role information
    # @param binding_id User/Group&#39;s id
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleBinding, Fixnum, Hash)>] RoleBinding data, response status code and response headers
    def get_role_binding_with_http_info(binding_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.get_role_binding ...'
      end
      # verify the required parameter 'binding_id' is set
      if @api_client.config.client_side_validation && binding_id.nil?
        fail ArgumentError, "Missing the required parameter 'binding_id' when calling SystemAdministrationSettingsUserManagementRolesApi.get_role_binding"
      end
      # resource path
      local_var_path = '/aaa/role-bindings/{binding-id}'.sub('{' + 'binding-id' + '}', binding_id.to_s)

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
        :return_type => 'RoleBinding')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#get_role_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get role information
    # Get role information
    # @param role Role id
    # @param [Hash] opts the optional parameters
    # @return [RoleWithFeatures]
    def get_role_info(role, opts = {})
      data, _status_code, _headers = get_role_info_with_http_info(role, opts)
      data
    end

    # Get role information
    # Get role information
    # @param role Role id
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleWithFeatures, Fixnum, Hash)>] RoleWithFeatures data, response status code and response headers
    def get_role_info_with_http_info(role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.get_role_info ...'
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling SystemAdministrationSettingsUserManagementRolesApi.get_role_info"
      end
      # resource path
      local_var_path = '/aaa/roles/{role}'.sub('{' + 'role' + '}', role.to_s)

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
        :return_type => 'RoleWithFeatures')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#get_role_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List feature permissions
    # List features 
    # @param [Hash] opts the optional parameters
    # @return [FeaturePermissionListResult]
    def list_features(opts = {})
      data, _status_code, _headers = list_features_with_http_info(opts)
      data
    end

    # List feature permissions
    # List features 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeaturePermissionListResult, Fixnum, Hash)>] FeaturePermissionListResult data, response status code and response headers
    def list_features_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.list_features ...'
      end
      # resource path
      local_var_path = '/aaa/features-with-properties'

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
        :return_type => 'FeaturePermissionListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#list_features\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get information about all roles with features and their permissions
    # Get information about all roles with features and their permissions
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [RoleWithFeaturesListResult]
    def list_roles_info(opts = {})
      data, _status_code, _headers = list_roles_info_with_http_info(opts)
      data
    end

    # Get information about all roles with features and their permissions
    # Get information about all roles with features and their permissions
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(RoleWithFeaturesListResult, Fixnum, Hash)>] RoleWithFeaturesListResult data, response status code and response headers
    def list_roles_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.list_roles_info ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsUserManagementRolesApi.list_roles_info, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsUserManagementRolesApi.list_roles_info, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/aaa/roles-with-feature-permissions'

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
        :return_type => 'RoleWithFeaturesListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#list_roles_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update User or Group's roles
    # Update User or Group's roles
    # @param binding_id User/Group&#39;s id
    # @param role_binding 
    # @param [Hash] opts the optional parameters
    # @return [RoleBinding]
    def update_role_binding(binding_id, role_binding, opts = {})
      data, _status_code, _headers = update_role_binding_with_http_info(binding_id, role_binding, opts)
      data
    end

    # Update User or Group&#39;s roles
    # Update User or Group&#39;s roles
    # @param binding_id User/Group&#39;s id
    # @param role_binding 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleBinding, Fixnum, Hash)>] RoleBinding data, response status code and response headers
    def update_role_binding_with_http_info(binding_id, role_binding, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.update_role_binding ...'
      end
      # verify the required parameter 'binding_id' is set
      if @api_client.config.client_side_validation && binding_id.nil?
        fail ArgumentError, "Missing the required parameter 'binding_id' when calling SystemAdministrationSettingsUserManagementRolesApi.update_role_binding"
      end
      # verify the required parameter 'role_binding' is set
      if @api_client.config.client_side_validation && role_binding.nil?
        fail ArgumentError, "Missing the required parameter 'role_binding' when calling SystemAdministrationSettingsUserManagementRolesApi.update_role_binding"
      end
      # resource path
      local_var_path = '/aaa/role-bindings/{binding-id}'.sub('{' + 'binding-id' + '}', binding_id.to_s)

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
      post_body = @api_client.object_to_http_body(role_binding)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RoleBinding')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#update_role_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Validate a new feature permission set
    # Validate the permissions of an incoming role. Also, recommend the permissions which need to be corrected. 
    # @param feature_permission_array 
    # @param [Hash] opts the optional parameters
    # @return [RecommendedFeaturePermissionListResult]
    def validate_and_recommend_permissions_validate(feature_permission_array, opts = {})
      data, _status_code, _headers = validate_and_recommend_permissions_validate_with_http_info(feature_permission_array, opts)
      data
    end

    # Validate a new feature permission set
    # Validate the permissions of an incoming role. Also, recommend the permissions which need to be corrected. 
    # @param feature_permission_array 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RecommendedFeaturePermissionListResult, Fixnum, Hash)>] RecommendedFeaturePermissionListResult data, response status code and response headers
    def validate_and_recommend_permissions_validate_with_http_info(feature_permission_array, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementRolesApi.validate_and_recommend_permissions_validate ...'
      end
      # verify the required parameter 'feature_permission_array' is set
      if @api_client.config.client_side_validation && feature_permission_array.nil?
        fail ArgumentError, "Missing the required parameter 'feature_permission_array' when calling SystemAdministrationSettingsUserManagementRolesApi.validate_and_recommend_permissions_validate"
      end
      # resource path
      local_var_path = '/aaa/roles?action=validate'

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
      post_body = @api_client.object_to_http_body(feature_permission_array)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RecommendedFeaturePermissionListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementRolesApi#validate_and_recommend_permissions_validate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
