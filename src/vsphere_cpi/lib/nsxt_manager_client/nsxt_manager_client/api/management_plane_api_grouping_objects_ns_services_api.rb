=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiGroupingObjectsNsServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create NSService
    # Creates a new NSService which allows users to specify characteristics to use for matching network traffic. 
    # @param ns_service 
    # @param [Hash] opts the optional parameters
    # @return [NSService]
    def create_ns_service(ns_service, opts = {})
      data, _status_code, _headers = create_ns_service_with_http_info(ns_service, opts)
      data
    end

    # Create NSService
    # Creates a new NSService which allows users to specify characteristics to use for matching network traffic. 
    # @param ns_service 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NSService, Fixnum, Hash)>] NSService data, response status code and response headers
    def create_ns_service_with_http_info(ns_service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsServicesApi.create_ns_service ...'
      end
      # verify the required parameter 'ns_service' is set
      if @api_client.config.client_side_validation && ns_service.nil?
        fail ArgumentError, "Missing the required parameter 'ns_service' when calling ManagementPlaneApiGroupingObjectsNsServicesApi.create_ns_service"
      end
      # resource path
      local_var_path = '/ns-services'

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
      post_body = @api_client.object_to_http_body(ns_service)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NSService')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsServicesApi#create_ns_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete NSService
    # Deletes the specified NSService. By default, if the NSService is being referred in an NSServiceGroup, it can't be deleted. In such situations, pass \"force=true\" as a parameter to force delete the NSService. System defined NSServices can't be deleted using \"force\" flag. 
    # @param ns_service_id NSService Id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere  (default to false)
    # @return [nil]
    def delete_ns_service(ns_service_id, opts = {})
      delete_ns_service_with_http_info(ns_service_id, opts)
      nil
    end

    # Delete NSService
    # Deletes the specified NSService. By default, if the NSService is being referred in an NSServiceGroup, it can&#39;t be deleted. In such situations, pass \&quot;force&#x3D;true\&quot; as a parameter to force delete the NSService. System defined NSServices can&#39;t be deleted using \&quot;force\&quot; flag. 
    # @param ns_service_id NSService Id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_ns_service_with_http_info(ns_service_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsServicesApi.delete_ns_service ...'
      end
      # verify the required parameter 'ns_service_id' is set
      if @api_client.config.client_side_validation && ns_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'ns_service_id' when calling ManagementPlaneApiGroupingObjectsNsServicesApi.delete_ns_service"
      end
      # resource path
      local_var_path = '/ns-services/{ns-service-id}'.sub('{' + 'ns-service-id' + '}', ns_service_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsServicesApi#delete_ns_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all NSServices
    # Returns paginated list of NSServices 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :default_service Fetch all default NSServices
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [NSServiceListResult]
    def list_ns_services(opts = {})
      data, _status_code, _headers = list_ns_services_with_http_info(opts)
      data
    end

    # List all NSServices
    # Returns paginated list of NSServices 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :default_service Fetch all default NSServices
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(NSServiceListResult, Fixnum, Hash)>] NSServiceListResult data, response status code and response headers
    def list_ns_services_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsServicesApi.list_ns_services ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiGroupingObjectsNsServicesApi.list_ns_services, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiGroupingObjectsNsServicesApi.list_ns_services, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/ns-services'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'default_service'] = opts[:'default_service'] if !opts[:'default_service'].nil?
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
        :return_type => 'NSServiceListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsServicesApi#list_ns_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read NSService
    # Returns information about the specified NSService 
    # @param ns_service_id NSService Id
    # @param [Hash] opts the optional parameters
    # @return [NSService]
    def read_ns_service(ns_service_id, opts = {})
      data, _status_code, _headers = read_ns_service_with_http_info(ns_service_id, opts)
      data
    end

    # Read NSService
    # Returns information about the specified NSService 
    # @param ns_service_id NSService Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(NSService, Fixnum, Hash)>] NSService data, response status code and response headers
    def read_ns_service_with_http_info(ns_service_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsServicesApi.read_ns_service ...'
      end
      # verify the required parameter 'ns_service_id' is set
      if @api_client.config.client_side_validation && ns_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'ns_service_id' when calling ManagementPlaneApiGroupingObjectsNsServicesApi.read_ns_service"
      end
      # resource path
      local_var_path = '/ns-services/{ns-service-id}'.sub('{' + 'ns-service-id' + '}', ns_service_id.to_s)

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
        :return_type => 'NSService')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsServicesApi#read_ns_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update NSService
    # Updates the specified NSService. Modifiable parameters include the description, display_name and the NSService element. The system defined NSServices can't be modified 
    # @param ns_service_id NSService Id
    # @param ns_service 
    # @param [Hash] opts the optional parameters
    # @return [NSService]
    def update_ns_service(ns_service_id, ns_service, opts = {})
      data, _status_code, _headers = update_ns_service_with_http_info(ns_service_id, ns_service, opts)
      data
    end

    # Update NSService
    # Updates the specified NSService. Modifiable parameters include the description, display_name and the NSService element. The system defined NSServices can&#39;t be modified 
    # @param ns_service_id NSService Id
    # @param ns_service 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NSService, Fixnum, Hash)>] NSService data, response status code and response headers
    def update_ns_service_with_http_info(ns_service_id, ns_service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsServicesApi.update_ns_service ...'
      end
      # verify the required parameter 'ns_service_id' is set
      if @api_client.config.client_side_validation && ns_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'ns_service_id' when calling ManagementPlaneApiGroupingObjectsNsServicesApi.update_ns_service"
      end
      # verify the required parameter 'ns_service' is set
      if @api_client.config.client_side_validation && ns_service.nil?
        fail ArgumentError, "Missing the required parameter 'ns_service' when calling ManagementPlaneApiGroupingObjectsNsServicesApi.update_ns_service"
      end
      # resource path
      local_var_path = '/ns-services/{ns-service-id}'.sub('{' + 'ns-service-id' + '}', ns_service_id.to_s)

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
      post_body = @api_client.object_to_http_body(ns_service)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NSService')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsServicesApi#update_ns_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
