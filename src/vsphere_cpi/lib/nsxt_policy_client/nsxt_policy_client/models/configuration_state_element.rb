=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module NSXT
  # Describes status of configuration of an entity
  class ConfigurationStateElement
    # URI of backing resource on sub system
    attr_accessor :sub_system_address

    # State of configuration on this sub system
    attr_accessor :state

    # Error code
    attr_accessor :failure_code

    # Name of backing resource on sub system
    attr_accessor :sub_system_name

    # Error message in case of failure
    attr_accessor :failure_message

    # Type of backing resource on sub system
    attr_accessor :sub_system_type

    # Identifier of backing resource on sub system
    attr_accessor :sub_system_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sub_system_address' => :'sub_system_address',
        :'state' => :'state',
        :'failure_code' => :'failure_code',
        :'sub_system_name' => :'sub_system_name',
        :'failure_message' => :'failure_message',
        :'sub_system_type' => :'sub_system_type',
        :'sub_system_id' => :'sub_system_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'sub_system_address' => :'String',
        :'state' => :'String',
        :'failure_code' => :'Integer',
        :'sub_system_name' => :'String',
        :'failure_message' => :'String',
        :'sub_system_type' => :'String',
        :'sub_system_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'sub_system_address')
        self.sub_system_address = attributes[:'sub_system_address']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'failure_code')
        self.failure_code = attributes[:'failure_code']
      end

      if attributes.has_key?(:'sub_system_name')
        self.sub_system_name = attributes[:'sub_system_name']
      end

      if attributes.has_key?(:'failure_message')
        self.failure_message = attributes[:'failure_message']
      end

      if attributes.has_key?(:'sub_system_type')
        self.sub_system_type = attributes[:'sub_system_type']
      end

      if attributes.has_key?(:'sub_system_id')
        self.sub_system_id = attributes[:'sub_system_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      state_validator = EnumAttributeValidator.new('String', ['in_progress', 'success', 'failed', 'partial_success', 'in_sync', 'VM_DEPLOYMENT_FAILED', 'VM_POWER_ON_FAILED', 'VM_POWER_OFF_FAILED', 'VM_UNDEPLOY_FAILED', 'REPLACE_FAILED', 'UPLINK_FROM_TEAMING_POLICY_NOT_MAPPED', 'LOGICAL_SWITCH_NAMED_TEAMING_HAS_NO_PNIC_BACKING', 'DELETE_VM_IN_REDEPLOY_FAILED', 'DEPLOY_VM_IN_REDEPLOY_FAILED', 'INSUFFICIENT_RESOURCES_IN_EDGE_NODE_FOR_SERVICE', 'EDGE_CONFIG_ERROR', 'REGISTRATION_FAILED', 'TRANSPORT_NODE_CONFIGURATION_MISSING', 'EDGE_HARDWARE_NOT_SUPPORTED', 'MULTIPLE_OVERLAY_TZS_NOT_SUPPORTED', 'TN_OVERLAY_TZ_IN_USE_BY_EDGE_CLUSTER', 'TZ_ENDPOINTS_NOT_SPECIFIED', 'NO_PNIC_PREPARED_IN_EDGE', 'APPLIANCE_INTERNAL_ERROR', 'VTEP_DHCP_NOT_SUPPORTED', 'UNSUPPORTED_HOST_SWITCH_PROFILE', 'UPLINK_HOST_SWITCH_PROFILE_NOT_SPECIFIED', 'HOSTSWITCH_PROFILE_NOT_FOUND', 'LLDP_SEND_ENABLED_NOT_SUPPORTED', 'UNSUPPORTED_NAMED_TEAMING_POLICY', 'LBSRCID_NOT_SUPPORTED_FOR_EDGE_VM', 'LACP_NOT_SUPPORTED_FOR_EDGE_VM', 'STANDBY_UPLINKS_NOT_SUPPORTED_FOR_EDGE_VM', 'MULTIPLE_ACTIVE_UPLINKS_NOT_SUPPORTED_FOR_EDGE', 'UNSUPPORTED_LACP_LB_ALGO_FOR_NODE', 'EDGE_NODE_VERSION_NOT_SUPPORTED', 'NO_PNIC_SPECIFIED_IN_TN', 'INVALID_PNIC_DEVICE_NAME', 'UNSUPPORTED_DEFAULT_TEAMING_POLICY', 'MPA_DISCONNECTED', 'VM_NETWORK_EDIT_PENDING', 'VM_RENAME_PENDING', 'VM_CONFIG_EDIT_PENDING', 'VM_NETWORK_EDIT_FAILED', 'VM_RENAME_FAILED', 'VM_CONFIG_EDIT_FAILED', 'VM_CONFIG_DISCREPANCY', 'VM_NODE_REFRESH_FAILED', 'VM_PLACEMENT_REFRESH_FAILED', 'NOT_AVAILABLE', 'REGISTRATION_TIMEDOUT', 'pending', 'orphaned', 'unknown', 'error'])
      return false unless state_validator.valid?(@state)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ['in_progress', 'success', 'failed', 'partial_success', 'in_sync', 'VM_DEPLOYMENT_FAILED', 'VM_POWER_ON_FAILED', 'VM_POWER_OFF_FAILED', 'VM_UNDEPLOY_FAILED', 'REPLACE_FAILED', 'UPLINK_FROM_TEAMING_POLICY_NOT_MAPPED', 'LOGICAL_SWITCH_NAMED_TEAMING_HAS_NO_PNIC_BACKING', 'DELETE_VM_IN_REDEPLOY_FAILED', 'DEPLOY_VM_IN_REDEPLOY_FAILED', 'INSUFFICIENT_RESOURCES_IN_EDGE_NODE_FOR_SERVICE', 'EDGE_CONFIG_ERROR', 'REGISTRATION_FAILED', 'TRANSPORT_NODE_CONFIGURATION_MISSING', 'EDGE_HARDWARE_NOT_SUPPORTED', 'MULTIPLE_OVERLAY_TZS_NOT_SUPPORTED', 'TN_OVERLAY_TZ_IN_USE_BY_EDGE_CLUSTER', 'TZ_ENDPOINTS_NOT_SPECIFIED', 'NO_PNIC_PREPARED_IN_EDGE', 'APPLIANCE_INTERNAL_ERROR', 'VTEP_DHCP_NOT_SUPPORTED', 'UNSUPPORTED_HOST_SWITCH_PROFILE', 'UPLINK_HOST_SWITCH_PROFILE_NOT_SPECIFIED', 'HOSTSWITCH_PROFILE_NOT_FOUND', 'LLDP_SEND_ENABLED_NOT_SUPPORTED', 'UNSUPPORTED_NAMED_TEAMING_POLICY', 'LBSRCID_NOT_SUPPORTED_FOR_EDGE_VM', 'LACP_NOT_SUPPORTED_FOR_EDGE_VM', 'STANDBY_UPLINKS_NOT_SUPPORTED_FOR_EDGE_VM', 'MULTIPLE_ACTIVE_UPLINKS_NOT_SUPPORTED_FOR_EDGE', 'UNSUPPORTED_LACP_LB_ALGO_FOR_NODE', 'EDGE_NODE_VERSION_NOT_SUPPORTED', 'NO_PNIC_SPECIFIED_IN_TN', 'INVALID_PNIC_DEVICE_NAME', 'UNSUPPORTED_DEFAULT_TEAMING_POLICY', 'MPA_DISCONNECTED', 'VM_NETWORK_EDIT_PENDING', 'VM_RENAME_PENDING', 'VM_CONFIG_EDIT_PENDING', 'VM_NETWORK_EDIT_FAILED', 'VM_RENAME_FAILED', 'VM_CONFIG_EDIT_FAILED', 'VM_CONFIG_DISCREPANCY', 'VM_NODE_REFRESH_FAILED', 'VM_PLACEMENT_REFRESH_FAILED', 'NOT_AVAILABLE', 'REGISTRATION_TIMEDOUT', 'pending', 'orphaned', 'unknown', 'error'])
      unless validator.valid?(state)
        fail ArgumentError, 'invalid value for "state", must be one of #{validator.allowable_values}.'
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sub_system_address == o.sub_system_address &&
          state == o.state &&
          failure_code == o.failure_code &&
          sub_system_name == o.sub_system_name &&
          failure_message == o.failure_message &&
          sub_system_type == o.sub_system_type &&
          sub_system_id == o.sub_system_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [sub_system_address, state, failure_code, sub_system_name, failure_message, sub_system_type, sub_system_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = NSXT.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
