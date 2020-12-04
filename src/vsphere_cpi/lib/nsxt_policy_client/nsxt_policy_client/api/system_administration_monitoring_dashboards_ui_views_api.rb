=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXT
  class SystemAdministrationMonitoringDashboardsUIViewsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new View.
    # Creates a new View.
    # @param view 
    # @param [Hash] opts the optional parameters
    # @return [View]
    def create_view(view, opts = {})
      data, _status_code, _headers = create_view_with_http_info(view, opts)
      data
    end

    # Creates a new View.
    # Creates a new View.
    # @param view 
    # @param [Hash] opts the optional parameters
    # @return [Array<(View, Fixnum, Hash)>] View data, response status code and response headers
    def create_view_with_http_info(view, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationMonitoringDashboardsUIViewsApi.create_view ...'
      end
      # verify the required parameter 'view' is set
      if @api_client.config.client_side_validation && view.nil?
        fail ArgumentError, "Missing the required parameter 'view' when calling SystemAdministrationMonitoringDashboardsUIViewsApi.create_view"
      end
      # resource path
      local_var_path = '/ui-views'

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
      post_body = @api_client.object_to_http_body(view)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'View')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationMonitoringDashboardsUIViewsApi#create_view\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete View
    # Delete View
    # @param view_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delet_view(view_id, opts = {})
      delet_view_with_http_info(view_id, opts)
      nil
    end

    # Delete View
    # Delete View
    # @param view_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delet_view_with_http_info(view_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationMonitoringDashboardsUIViewsApi.delet_view ...'
      end
      # verify the required parameter 'view_id' is set
      if @api_client.config.client_side_validation && view_id.nil?
        fail ArgumentError, "Missing the required parameter 'view_id' when calling SystemAdministrationMonitoringDashboardsUIViewsApi.delet_view"
      end
      # resource path
      local_var_path = '/ui-views/{view-id}'.sub('{' + 'view-id' + '}', view_id.to_s)

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
        @api_client.config.logger.debug "API called: SystemAdministrationMonitoringDashboardsUIViewsApi#delet_view\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns View Information
    # Returns Information about a specific View. 
    # @param view_id 
    # @param [Hash] opts the optional parameters
    # @return [View]
    def get_view(view_id, opts = {})
      data, _status_code, _headers = get_view_with_http_info(view_id, opts)
      data
    end

    # Returns View Information
    # Returns Information about a specific View. 
    # @param view_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(View, Fixnum, Hash)>] View data, response status code and response headers
    def get_view_with_http_info(view_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationMonitoringDashboardsUIViewsApi.get_view ...'
      end
      # verify the required parameter 'view_id' is set
      if @api_client.config.client_side_validation && view_id.nil?
        fail ArgumentError, "Missing the required parameter 'view_id' when calling SystemAdministrationMonitoringDashboardsUIViewsApi.get_view"
      end
      # resource path
      local_var_path = '/ui-views/{view-id}'.sub('{' + 'view-id' + '}', view_id.to_s)

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
        :return_type => 'View')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationMonitoringDashboardsUIViewsApi#get_view\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the Views based on query criteria defined in ViewQueryParameters.
    # If no query params are specified then all the views entitled for the user are returned. The views to which a user is entitled to include the views created by the user and the shared views. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag The tag for which associated views to be queried.
    # @option opts [String] :view_ids Ids of the Views
    # @option opts [String] :widget_id Id of widget configuration
    # @return [ViewList]
    def list_views(opts = {})
      data, _status_code, _headers = list_views_with_http_info(opts)
      data
    end

    # Returns the Views based on query criteria defined in ViewQueryParameters.
    # If no query params are specified then all the views entitled for the user are returned. The views to which a user is entitled to include the views created by the user and the shared views. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag The tag for which associated views to be queried.
    # @option opts [String] :view_ids Ids of the Views
    # @option opts [String] :widget_id Id of widget configuration
    # @return [Array<(ViewList, Fixnum, Hash)>] ViewList data, response status code and response headers
    def list_views_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationMonitoringDashboardsUIViewsApi.list_views ...'
      end
      if @api_client.config.client_side_validation && !opts[:'view_ids'].nil? && opts[:'view_ids'].to_s.length > 8192
        fail ArgumentError, 'invalid value for "opts[:"view_ids"]" when calling SystemAdministrationMonitoringDashboardsUIViewsApi.list_views, the character length must be smaller than or equal to 8192.'
      end

      if @api_client.config.client_side_validation && !opts[:'widget_id'].nil? && opts[:'widget_id'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"widget_id"]" when calling SystemAdministrationMonitoringDashboardsUIViewsApi.list_views, the character length must be smaller than or equal to 255.'
      end

      # resource path
      local_var_path = '/ui-views'

      # query parameters
      query_params = {}
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?
      query_params[:'view_ids'] = opts[:'view_ids'] if !opts[:'view_ids'].nil?
      query_params[:'widget_id'] = opts[:'widget_id'] if !opts[:'widget_id'].nil?

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
        :return_type => 'ViewList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationMonitoringDashboardsUIViewsApi#list_views\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update View
    # Update View
    # @param view_id 
    # @param view 
    # @param [Hash] opts the optional parameters
    # @return [View]
    def update_view(view_id, view, opts = {})
      data, _status_code, _headers = update_view_with_http_info(view_id, view, opts)
      data
    end

    # Update View
    # Update View
    # @param view_id 
    # @param view 
    # @param [Hash] opts the optional parameters
    # @return [Array<(View, Fixnum, Hash)>] View data, response status code and response headers
    def update_view_with_http_info(view_id, view, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationMonitoringDashboardsUIViewsApi.update_view ...'
      end
      # verify the required parameter 'view_id' is set
      if @api_client.config.client_side_validation && view_id.nil?
        fail ArgumentError, "Missing the required parameter 'view_id' when calling SystemAdministrationMonitoringDashboardsUIViewsApi.update_view"
      end
      # verify the required parameter 'view' is set
      if @api_client.config.client_side_validation && view.nil?
        fail ArgumentError, "Missing the required parameter 'view' when calling SystemAdministrationMonitoringDashboardsUIViewsApi.update_view"
      end
      # resource path
      local_var_path = '/ui-views/{view-id}'.sub('{' + 'view-id' + '}', view_id.to_s)

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
      post_body = @api_client.object_to_http_body(view)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'View')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationMonitoringDashboardsUIViewsApi#update_view\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
