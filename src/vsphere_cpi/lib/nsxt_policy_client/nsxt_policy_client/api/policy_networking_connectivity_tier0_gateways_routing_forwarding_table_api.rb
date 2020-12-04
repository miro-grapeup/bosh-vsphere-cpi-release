=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXT
  class PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get forwarding table from tier-0
    # Get forwarding table from tier-0 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :edge_id UUID of edge node
    # @option opts [String] :edge_path Policy path of edge node
    # @option opts [String] :enforcement_point_path Enforcement point path
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :network_prefix IPv4 or IPv6 CIDR Block
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :route_source Filter routes based on the source from which route is learned
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [RoutingTableListResult]
    def get_tier0_forwarding_table(tier_0_id, opts = {})
      data, _status_code, _headers = get_tier0_forwarding_table_with_http_info(tier_0_id, opts)
      data
    end

    # Get forwarding table from tier-0
    # Get forwarding table from tier-0 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :edge_id UUID of edge node
    # @option opts [String] :edge_path Policy path of edge node
    # @option opts [String] :enforcement_point_path Enforcement point path
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :network_prefix IPv4 or IPv6 CIDR Block
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :route_source Filter routes based on the source from which route is learned
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(RoutingTableListResult, Fixnum, Hash)>] RoutingTableListResult data, response status code and response headers
    def get_tier0_forwarding_table_with_http_info(tier_0_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'route_source'] && !['BGP', 'STATIC', 'CONNECTED'].include?(opts[:'route_source'])
        fail ArgumentError, 'invalid value for "route_source", must be one of BGP, STATIC, CONNECTED'
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/forwarding-table'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'edge_id'] = opts[:'edge_id'] if !opts[:'edge_id'].nil?
      query_params[:'edge_path'] = opts[:'edge_path'] if !opts[:'edge_path'].nil?
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'network_prefix'] = opts[:'network_prefix'] if !opts[:'network_prefix'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'route_source'] = opts[:'route_source'] if !opts[:'route_source'].nil?
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
        :return_type => 'RoutingTableListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi#get_tier0_forwarding_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get forwarding table from tier-0
    # Get forwarding table from tier-0 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :edge_id UUID of edge node
    # @option opts [String] :edge_path Policy path of edge node
    # @option opts [String] :enforcement_point_path Enforcement point path
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :network_prefix IPv4 or IPv6 CIDR Block
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :route_source Filter routes based on the source from which route is learned
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [RoutingTableListResult]
    def get_tier0_forwarding_table_0(tier_0_id, opts = {})
      data, _status_code, _headers = get_tier0_forwarding_table_0_with_http_info(tier_0_id, opts)
      data
    end

    # Get forwarding table from tier-0
    # Get forwarding table from tier-0 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :edge_id UUID of edge node
    # @option opts [String] :edge_path Policy path of edge node
    # @option opts [String] :enforcement_point_path Enforcement point path
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :network_prefix IPv4 or IPv6 CIDR Block
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :route_source Filter routes based on the source from which route is learned
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(RoutingTableListResult, Fixnum, Hash)>] RoutingTableListResult data, response status code and response headers
    def get_tier0_forwarding_table_0_with_http_info(tier_0_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_0"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_0, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'route_source'] && !['BGP', 'STATIC', 'CONNECTED'].include?(opts[:'route_source'])
        fail ArgumentError, 'invalid value for "route_source", must be one of BGP, STATIC, CONNECTED'
      end
      # resource path
      local_var_path = '/global-infra/tier-0s/{tier-0-id}/forwarding-table'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'edge_id'] = opts[:'edge_id'] if !opts[:'edge_id'].nil?
      query_params[:'edge_path'] = opts[:'edge_path'] if !opts[:'edge_path'].nil?
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'network_prefix'] = opts[:'network_prefix'] if !opts[:'network_prefix'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'route_source'] = opts[:'route_source'] if !opts[:'route_source'].nil?
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
        :return_type => 'RoutingTableListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi#get_tier0_forwarding_table_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get forwarding table from tier-0 in CSV format
    # Get forwarding table from tier-0 gateway in CSV format. 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :edge_id UUID of edge node
    # @option opts [String] :edge_path Policy path of edge node
    # @option opts [String] :enforcement_point_path Enforcement point path
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :network_prefix IPv4 or IPv6 CIDR Block
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :route_source Filter routes based on the source from which route is learned
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [GatewayRouteTableInCsvFormat]
    def get_tier0_forwarding_table_csv(tier_0_id, opts = {})
      data, _status_code, _headers = get_tier0_forwarding_table_csv_with_http_info(tier_0_id, opts)
      data
    end

    # Get forwarding table from tier-0 in CSV format
    # Get forwarding table from tier-0 gateway in CSV format. 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :edge_id UUID of edge node
    # @option opts [String] :edge_path Policy path of edge node
    # @option opts [String] :enforcement_point_path Enforcement point path
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :network_prefix IPv4 or IPv6 CIDR Block
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :route_source Filter routes based on the source from which route is learned
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(GatewayRouteTableInCsvFormat, Fixnum, Hash)>] GatewayRouteTableInCsvFormat data, response status code and response headers
    def get_tier0_forwarding_table_csv_with_http_info(tier_0_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_csv ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_csv"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_csv, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_csv, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'route_source'] && !['BGP', 'STATIC', 'CONNECTED'].include?(opts[:'route_source'])
        fail ArgumentError, 'invalid value for "route_source", must be one of BGP, STATIC, CONNECTED'
      end
      # resource path
      local_var_path = '/global-infra/tier-0s/{tier-0-id}/forwarding-table?format=csv'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'edge_id'] = opts[:'edge_id'] if !opts[:'edge_id'].nil?
      query_params[:'edge_path'] = opts[:'edge_path'] if !opts[:'edge_path'].nil?
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'network_prefix'] = opts[:'network_prefix'] if !opts[:'network_prefix'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'route_source'] = opts[:'route_source'] if !opts[:'route_source'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/csv'])
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
        :return_type => 'GatewayRouteTableInCsvFormat')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi#get_tier0_forwarding_table_csv\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get forwarding table from tier-0 in CSV format
    # Get forwarding table from tier-0 gateway in CSV format. 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :edge_id UUID of edge node
    # @option opts [String] :edge_path Policy path of edge node
    # @option opts [String] :enforcement_point_path Enforcement point path
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :network_prefix IPv4 or IPv6 CIDR Block
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :route_source Filter routes based on the source from which route is learned
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [GatewayRouteTableInCsvFormat]
    def get_tier0_forwarding_table_csv_0(tier_0_id, opts = {})
      data, _status_code, _headers = get_tier0_forwarding_table_csv_0_with_http_info(tier_0_id, opts)
      data
    end

    # Get forwarding table from tier-0 in CSV format
    # Get forwarding table from tier-0 gateway in CSV format. 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :edge_id UUID of edge node
    # @option opts [String] :edge_path Policy path of edge node
    # @option opts [String] :enforcement_point_path Enforcement point path
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :network_prefix IPv4 or IPv6 CIDR Block
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :route_source Filter routes based on the source from which route is learned
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(GatewayRouteTableInCsvFormat, Fixnum, Hash)>] GatewayRouteTableInCsvFormat data, response status code and response headers
    def get_tier0_forwarding_table_csv_0_with_http_info(tier_0_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_csv_0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_csv_0"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_csv_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi.get_tier0_forwarding_table_csv_0, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'route_source'] && !['BGP', 'STATIC', 'CONNECTED'].include?(opts[:'route_source'])
        fail ArgumentError, 'invalid value for "route_source", must be one of BGP, STATIC, CONNECTED'
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/forwarding-table?format=csv'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'edge_id'] = opts[:'edge_id'] if !opts[:'edge_id'].nil?
      query_params[:'edge_path'] = opts[:'edge_path'] if !opts[:'edge_path'].nil?
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'network_prefix'] = opts[:'network_prefix'] if !opts[:'network_prefix'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'route_source'] = opts[:'route_source'] if !opts[:'route_source'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/csv'])
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
        :return_type => 'GatewayRouteTableInCsvFormat')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysRoutingForwardingTableApi#get_tier0_forwarding_table_csv_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
