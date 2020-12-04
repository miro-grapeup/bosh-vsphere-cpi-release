=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a mirror session
    # Create a mirror session
    # @param port_mirroring_session 
    # @param [Hash] opts the optional parameters
    # @return [PortMirroringSession]
    def create_port_mirroring_sessions(port_mirroring_session, opts = {})
      data, _status_code, _headers = create_port_mirroring_sessions_with_http_info(port_mirroring_session, opts)
      data
    end

    # Create a mirror session
    # Create a mirror session
    # @param port_mirroring_session 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortMirroringSession, Fixnum, Hash)>] PortMirroringSession data, response status code and response headers
    def create_port_mirroring_sessions_with_http_info(port_mirroring_session, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.create_port_mirroring_sessions ...'
      end
      # verify the required parameter 'port_mirroring_session' is set
      if @api_client.config.client_side_validation && port_mirroring_session.nil?
        fail ArgumentError, "Missing the required parameter 'port_mirroring_session' when calling ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.create_port_mirroring_sessions"
      end
      # resource path
      local_var_path = '/mirror-sessions'

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
      post_body = @api_client.object_to_http_body(port_mirroring_session)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortMirroringSession')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi#create_port_mirroring_sessions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete the mirror session
    # Delete the mirror session
    # @param mirror_session_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_port_mirroring_session(mirror_session_id, opts = {})
      delete_port_mirroring_session_with_http_info(mirror_session_id, opts)
      nil
    end

    # Delete the mirror session
    # Delete the mirror session
    # @param mirror_session_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_port_mirroring_session_with_http_info(mirror_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.delete_port_mirroring_session ...'
      end
      # verify the required parameter 'mirror_session_id' is set
      if @api_client.config.client_side_validation && mirror_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'mirror_session_id' when calling ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.delete_port_mirroring_session"
      end
      # resource path
      local_var_path = '/mirror-sessions/{mirror-session-id}'.sub('{' + 'mirror-session-id' + '}', mirror_session_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi#delete_port_mirroring_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the mirror session
    # Get the mirror session
    # @param mirror_session_id 
    # @param [Hash] opts the optional parameters
    # @return [PortMirroringSession]
    def get_port_mirroring_session(mirror_session_id, opts = {})
      data, _status_code, _headers = get_port_mirroring_session_with_http_info(mirror_session_id, opts)
      data
    end

    # Get the mirror session
    # Get the mirror session
    # @param mirror_session_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortMirroringSession, Fixnum, Hash)>] PortMirroringSession data, response status code and response headers
    def get_port_mirroring_session_with_http_info(mirror_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.get_port_mirroring_session ...'
      end
      # verify the required parameter 'mirror_session_id' is set
      if @api_client.config.client_side_validation && mirror_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'mirror_session_id' when calling ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.get_port_mirroring_session"
      end
      # resource path
      local_var_path = '/mirror-sessions/{mirror-session-id}'.sub('{' + 'mirror-session-id' + '}', mirror_session_id.to_s)

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
        :return_type => 'PortMirroringSession')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi#get_port_mirroring_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all mirror sessions
    # List all mirror sessions
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [PortMirroringSessionListResult]
    def list_port_mirroring_session(opts = {})
      data, _status_code, _headers = list_port_mirroring_session_with_http_info(opts)
      data
    end

    # List all mirror sessions
    # List all mirror sessions
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(PortMirroringSessionListResult, Fixnum, Hash)>] PortMirroringSessionListResult data, response status code and response headers
    def list_port_mirroring_session_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.list_port_mirroring_session ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.list_port_mirroring_session, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.list_port_mirroring_session, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/mirror-sessions'

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
        :return_type => 'PortMirroringSessionListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi#list_port_mirroring_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update the mirror session
    # Update the mirror session
    # @param mirror_session_id 
    # @param port_mirroring_session 
    # @param [Hash] opts the optional parameters
    # @return [PortMirroringSession]
    def update_port_mirroring_session(mirror_session_id, port_mirroring_session, opts = {})
      data, _status_code, _headers = update_port_mirroring_session_with_http_info(mirror_session_id, port_mirroring_session, opts)
      data
    end

    # Update the mirror session
    # Update the mirror session
    # @param mirror_session_id 
    # @param port_mirroring_session 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortMirroringSession, Fixnum, Hash)>] PortMirroringSession data, response status code and response headers
    def update_port_mirroring_session_with_http_info(mirror_session_id, port_mirroring_session, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.update_port_mirroring_session ...'
      end
      # verify the required parameter 'mirror_session_id' is set
      if @api_client.config.client_side_validation && mirror_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'mirror_session_id' when calling ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.update_port_mirroring_session"
      end
      # verify the required parameter 'port_mirroring_session' is set
      if @api_client.config.client_side_validation && port_mirroring_session.nil?
        fail ArgumentError, "Missing the required parameter 'port_mirroring_session' when calling ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.update_port_mirroring_session"
      end
      # resource path
      local_var_path = '/mirror-sessions/{mirror-session-id}'.sub('{' + 'mirror-session-id' + '}', mirror_session_id.to_s)

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
      post_body = @api_client.object_to_http_body(port_mirroring_session)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortMirroringSession')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi#update_port_mirroring_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Verify whether the mirror session is still valid
    # Verify whether all participants are on the same transport node
    # @param mirror_session_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def verify_port_mirroring_session_verify(mirror_session_id, opts = {})
      verify_port_mirroring_session_verify_with_http_info(mirror_session_id, opts)
      nil
    end

    # Verify whether the mirror session is still valid
    # Verify whether all participants are on the same transport node
    # @param mirror_session_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def verify_port_mirroring_session_verify_with_http_info(mirror_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.verify_port_mirroring_session_verify ...'
      end
      # verify the required parameter 'mirror_session_id' is set
      if @api_client.config.client_side_validation && mirror_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'mirror_session_id' when calling ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi.verify_port_mirroring_session_verify"
      end
      # resource path
      local_var_path = '/mirror-sessions/{mirror-session-id}?action=verify'.sub('{' + 'mirror-session-id' + '}', mirror_session_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringPortMirroringApi#verify_port_mirroring_session_verify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
