=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXT
  class PolicyNetworkingNetworkServicesNATStatisticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get NAT Rule Statistics
    # Get NAT Rule Statistics from Tier-0 denoted by Tier-0 ID, under NAT section denoted by &lt;nat-id&gt;. Under tier-0 there will be 3 different NATs(sections). (INTERNAL, USER and DEFAULT) For more details related to NAT section please refer to PolicyNAT schema. 
    # @param tier_0_id Tier-0 ID
    # @param nat_id NAT id
    # @param nat_rule_id Rule ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [PolicyNatRuleStatisticsListResult]
    def get_policy_nat_rule_statistics_from_tier0(tier_0_id, nat_id, nat_rule_id, opts = {})
      data, _status_code, _headers = get_policy_nat_rule_statistics_from_tier0_with_http_info(tier_0_id, nat_id, nat_rule_id, opts)
      data
    end

    # Get NAT Rule Statistics
    # Get NAT Rule Statistics from Tier-0 denoted by Tier-0 ID, under NAT section denoted by &amp;lt;nat-id&amp;gt;. Under tier-0 there will be 3 different NATs(sections). (INTERNAL, USER and DEFAULT) For more details related to NAT section please refer to PolicyNAT schema. 
    # @param tier_0_id Tier-0 ID
    # @param nat_id NAT id
    # @param nat_rule_id Rule ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(PolicyNatRuleStatisticsListResult, Fixnum, Hash)>] PolicyNatRuleStatisticsListResult data, response status code and response headers
    def get_policy_nat_rule_statistics_from_tier0_with_http_info(tier_0_id, nat_id, nat_rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier0"
      end
      # verify the required parameter 'nat_id' is set
      if @api_client.config.client_side_validation && nat_id.nil?
        fail ArgumentError, "Missing the required parameter 'nat_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier0"
      end
      # verify the required parameter 'nat_rule_id' is set
      if @api_client.config.client_side_validation && nat_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'nat_rule_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier0"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/nat/{nat-id}/nat-rules/{nat-rule-id}/statistics'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'nat-id' + '}', nat_id.to_s).sub('{' + 'nat-rule-id' + '}', nat_rule_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

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
        :return_type => 'PolicyNatRuleStatisticsListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesNATStatisticsApi#get_policy_nat_rule_statistics_from_tier0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get NAT Rule Statistics
    # Get NAT Rule Statistics from Tier-0 denoted by Tier-0 ID, under NAT section denoted by &lt;nat-id&gt;. Under tier-0 there will be 3 different NATs(sections). (INTERNAL, USER and DEFAULT) For more details related to NAT section please refer to PolicyNAT schema. 
    # @param tier_0_id Tier-0 ID
    # @param nat_id NAT id
    # @param nat_rule_id Rule ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [PolicyNatRuleStatisticsListResult]
    def get_policy_nat_rule_statistics_from_tier0_0(tier_0_id, nat_id, nat_rule_id, opts = {})
      data, _status_code, _headers = get_policy_nat_rule_statistics_from_tier0_0_with_http_info(tier_0_id, nat_id, nat_rule_id, opts)
      data
    end

    # Get NAT Rule Statistics
    # Get NAT Rule Statistics from Tier-0 denoted by Tier-0 ID, under NAT section denoted by &amp;lt;nat-id&amp;gt;. Under tier-0 there will be 3 different NATs(sections). (INTERNAL, USER and DEFAULT) For more details related to NAT section please refer to PolicyNAT schema. 
    # @param tier_0_id Tier-0 ID
    # @param nat_id NAT id
    # @param nat_rule_id Rule ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(PolicyNatRuleStatisticsListResult, Fixnum, Hash)>] PolicyNatRuleStatisticsListResult data, response status code and response headers
    def get_policy_nat_rule_statistics_from_tier0_0_with_http_info(tier_0_id, nat_id, nat_rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier0_0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier0_0"
      end
      # verify the required parameter 'nat_id' is set
      if @api_client.config.client_side_validation && nat_id.nil?
        fail ArgumentError, "Missing the required parameter 'nat_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier0_0"
      end
      # verify the required parameter 'nat_rule_id' is set
      if @api_client.config.client_side_validation && nat_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'nat_rule_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier0_0"
      end
      # resource path
      local_var_path = '/global-infra/tier-0s/{tier-0-id}/nat/{nat-id}/nat-rules/{nat-rule-id}/statistics'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'nat-id' + '}', nat_id.to_s).sub('{' + 'nat-rule-id' + '}', nat_rule_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

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
        :return_type => 'PolicyNatRuleStatisticsListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesNATStatisticsApi#get_policy_nat_rule_statistics_from_tier0_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get NAT Rule Statistics
    # Get NAT Rule Statistics from Tier-1 denoted by Tier-1 ID, under NAT section denoted by &lt;nat-id&gt;. Under tier-1 there will be 3 different NATs(sections). (INTERNAL, USER and DEFAULT) For more details related to NAT section please refer to PolicyNAT schema. 
    # @param tier_1_id Tier-1 ID
    # @param nat_id NAT id
    # @param nat_rule_id Rule ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [PolicyNatRuleStatisticsListResult]
    def get_policy_nat_rule_statistics_from_tier1(tier_1_id, nat_id, nat_rule_id, opts = {})
      data, _status_code, _headers = get_policy_nat_rule_statistics_from_tier1_with_http_info(tier_1_id, nat_id, nat_rule_id, opts)
      data
    end

    # Get NAT Rule Statistics
    # Get NAT Rule Statistics from Tier-1 denoted by Tier-1 ID, under NAT section denoted by &amp;lt;nat-id&amp;gt;. Under tier-1 there will be 3 different NATs(sections). (INTERNAL, USER and DEFAULT) For more details related to NAT section please refer to PolicyNAT schema. 
    # @param tier_1_id Tier-1 ID
    # @param nat_id NAT id
    # @param nat_rule_id Rule ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(PolicyNatRuleStatisticsListResult, Fixnum, Hash)>] PolicyNatRuleStatisticsListResult data, response status code and response headers
    def get_policy_nat_rule_statistics_from_tier1_with_http_info(tier_1_id, nat_id, nat_rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier1 ...'
      end
      # verify the required parameter 'tier_1_id' is set
      if @api_client.config.client_side_validation && tier_1_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_1_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier1"
      end
      # verify the required parameter 'nat_id' is set
      if @api_client.config.client_side_validation && nat_id.nil?
        fail ArgumentError, "Missing the required parameter 'nat_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier1"
      end
      # verify the required parameter 'nat_rule_id' is set
      if @api_client.config.client_side_validation && nat_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'nat_rule_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier1"
      end
      # resource path
      local_var_path = '/global-infra/tier-1s/{tier-1-id}/nat/{nat-id}/nat-rules/{nat-rule-id}/statistics'.sub('{' + 'tier-1-id' + '}', tier_1_id.to_s).sub('{' + 'nat-id' + '}', nat_id.to_s).sub('{' + 'nat-rule-id' + '}', nat_rule_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

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
        :return_type => 'PolicyNatRuleStatisticsListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesNATStatisticsApi#get_policy_nat_rule_statistics_from_tier1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get NAT Rule Statistics
    # Get NAT Rule Statistics from Tier-1 denoted by Tier-1 ID, under NAT section denoted by &lt;nat-id&gt;. Under tier-1 there will be 3 different NATs(sections). (INTERNAL, USER and DEFAULT) For more details related to NAT section please refer to PolicyNAT schema. 
    # @param tier_1_id Tier-1 ID
    # @param nat_id NAT id
    # @param nat_rule_id Rule ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [PolicyNatRuleStatisticsListResult]
    def get_policy_nat_rule_statistics_from_tier1_0(tier_1_id, nat_id, nat_rule_id, opts = {})
      data, _status_code, _headers = get_policy_nat_rule_statistics_from_tier1_0_with_http_info(tier_1_id, nat_id, nat_rule_id, opts)
      data
    end

    # Get NAT Rule Statistics
    # Get NAT Rule Statistics from Tier-1 denoted by Tier-1 ID, under NAT section denoted by &amp;lt;nat-id&amp;gt;. Under tier-1 there will be 3 different NATs(sections). (INTERNAL, USER and DEFAULT) For more details related to NAT section please refer to PolicyNAT schema. 
    # @param tier_1_id Tier-1 ID
    # @param nat_id NAT id
    # @param nat_rule_id Rule ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(PolicyNatRuleStatisticsListResult, Fixnum, Hash)>] PolicyNatRuleStatisticsListResult data, response status code and response headers
    def get_policy_nat_rule_statistics_from_tier1_0_with_http_info(tier_1_id, nat_id, nat_rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier1_0 ...'
      end
      # verify the required parameter 'tier_1_id' is set
      if @api_client.config.client_side_validation && tier_1_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_1_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier1_0"
      end
      # verify the required parameter 'nat_id' is set
      if @api_client.config.client_side_validation && nat_id.nil?
        fail ArgumentError, "Missing the required parameter 'nat_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier1_0"
      end
      # verify the required parameter 'nat_rule_id' is set
      if @api_client.config.client_side_validation && nat_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'nat_rule_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.get_policy_nat_rule_statistics_from_tier1_0"
      end
      # resource path
      local_var_path = '/infra/tier-1s/{tier-1-id}/nat/{nat-id}/nat-rules/{nat-rule-id}/statistics'.sub('{' + 'tier-1-id' + '}', tier_1_id.to_s).sub('{' + 'nat-id' + '}', nat_id.to_s).sub('{' + 'nat-rule-id' + '}', nat_rule_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

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
        :return_type => 'PolicyNatRuleStatisticsListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesNATStatisticsApi#get_policy_nat_rule_statistics_from_tier1_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List NAT Rules Statistics
    # List NAT Rules Statistics from Tier-0 denoted by Tier-0 ID.
    # @param tier_0_id Tier-0 ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [PolicyNatRuleStatisticsPerLogicalRouterListResult]
    def list_policy_nat_rules_statistics_from_tier0(tier_0_id, opts = {})
      data, _status_code, _headers = list_policy_nat_rules_statistics_from_tier0_with_http_info(tier_0_id, opts)
      data
    end

    # List NAT Rules Statistics
    # List NAT Rules Statistics from Tier-0 denoted by Tier-0 ID.
    # @param tier_0_id Tier-0 ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(PolicyNatRuleStatisticsPerLogicalRouterListResult, Fixnum, Hash)>] PolicyNatRuleStatisticsPerLogicalRouterListResult data, response status code and response headers
    def list_policy_nat_rules_statistics_from_tier0_with_http_info(tier_0_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier0"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/nat/statistics'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
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
        :return_type => 'PolicyNatRuleStatisticsPerLogicalRouterListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesNATStatisticsApi#list_policy_nat_rules_statistics_from_tier0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List NAT Rules Statistics
    # List NAT Rules Statistics from Tier-0 denoted by Tier-0 ID.
    # @param tier_0_id Tier-0 ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [PolicyNatRuleStatisticsPerLogicalRouterListResult]
    def list_policy_nat_rules_statistics_from_tier0_0(tier_0_id, opts = {})
      data, _status_code, _headers = list_policy_nat_rules_statistics_from_tier0_0_with_http_info(tier_0_id, opts)
      data
    end

    # List NAT Rules Statistics
    # List NAT Rules Statistics from Tier-0 denoted by Tier-0 ID.
    # @param tier_0_id Tier-0 ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(PolicyNatRuleStatisticsPerLogicalRouterListResult, Fixnum, Hash)>] PolicyNatRuleStatisticsPerLogicalRouterListResult data, response status code and response headers
    def list_policy_nat_rules_statistics_from_tier0_0_with_http_info(tier_0_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier0_0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier0_0"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier0_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier0_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/tier-0s/{tier-0-id}/nat/statistics'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
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
        :return_type => 'PolicyNatRuleStatisticsPerLogicalRouterListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesNATStatisticsApi#list_policy_nat_rules_statistics_from_tier0_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List NAT Rules Statistics
    # List NAT Rules Statistics from Tier-1 denoted by Tier-1 ID.
    # @param tier_1_id Tier-1 ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [PolicyNatRuleStatisticsPerLogicalRouterListResult]
    def list_policy_nat_rules_statistics_from_tier1(tier_1_id, opts = {})
      data, _status_code, _headers = list_policy_nat_rules_statistics_from_tier1_with_http_info(tier_1_id, opts)
      data
    end

    # List NAT Rules Statistics
    # List NAT Rules Statistics from Tier-1 denoted by Tier-1 ID.
    # @param tier_1_id Tier-1 ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(PolicyNatRuleStatisticsPerLogicalRouterListResult, Fixnum, Hash)>] PolicyNatRuleStatisticsPerLogicalRouterListResult data, response status code and response headers
    def list_policy_nat_rules_statistics_from_tier1_with_http_info(tier_1_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier1 ...'
      end
      # verify the required parameter 'tier_1_id' is set
      if @api_client.config.client_side_validation && tier_1_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_1_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier1"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier1, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier1, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/tier-1s/{tier-1-id}/nat/statistics'.sub('{' + 'tier-1-id' + '}', tier_1_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
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
        :return_type => 'PolicyNatRuleStatisticsPerLogicalRouterListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesNATStatisticsApi#list_policy_nat_rules_statistics_from_tier1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List NAT Rules Statistics
    # List NAT Rules Statistics from Tier-1 denoted by Tier-1 ID.
    # @param tier_1_id Tier-1 ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [PolicyNatRuleStatisticsPerLogicalRouterListResult]
    def list_policy_nat_rules_statistics_from_tier1_0(tier_1_id, opts = {})
      data, _status_code, _headers = list_policy_nat_rules_statistics_from_tier1_0_with_http_info(tier_1_id, opts)
      data
    end

    # List NAT Rules Statistics
    # List NAT Rules Statistics from Tier-1 denoted by Tier-1 ID.
    # @param tier_1_id Tier-1 ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(PolicyNatRuleStatisticsPerLogicalRouterListResult, Fixnum, Hash)>] PolicyNatRuleStatisticsPerLogicalRouterListResult data, response status code and response headers
    def list_policy_nat_rules_statistics_from_tier1_0_with_http_info(tier_1_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier1_0 ...'
      end
      # verify the required parameter 'tier_1_id' is set
      if @api_client.config.client_side_validation && tier_1_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_1_id' when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier1_0"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier1_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingNetworkServicesNATStatisticsApi.list_policy_nat_rules_statistics_from_tier1_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/tier-1s/{tier-1-id}/nat/statistics'.sub('{' + 'tier-1-id' + '}', tier_1_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
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
        :return_type => 'PolicyNatRuleStatisticsPerLogicalRouterListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesNATStatisticsApi#list_policy_nat_rules_statistics_from_tier1_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
