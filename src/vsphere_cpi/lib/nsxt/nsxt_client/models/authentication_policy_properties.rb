=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module NSXT
  # Configuration of authentication policies for the NSX node
  class AuthenticationPolicyProperties
    # Link to this resource
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # In order to trigger an account lockout, all authentication failures must occur in this time window. If the reset period expires, the failed login count is reset to zero. Only applies to NSX Manager nodes. Ignored on other node types.
    attr_accessor :api_failed_auth_reset_period

    # Minimum number of characters required in account passwords
    attr_accessor :minimum_password_length

    # Once a lockout occurs, the account remains locked out of the CLI for this time period. While the lockout period is in effect, additional authentication attempts restart the lockout period, even if a valid password is specified.
    attr_accessor :cli_failed_auth_lockout_period

    # Only applies to NSX Manager nodes. Ignored on other node types.
    attr_accessor :api_max_auth_failures

    # Once a lockout occurs, the account remains locked out of the API for this time period. Only applies to NSX Manager nodes. Ignored on other node types.
    attr_accessor :api_failed_auth_lockout_period

    # Number of authentication failures that trigger CLI lockout
    attr_accessor :cli_max_auth_failures

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_self' => :'_self',
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'api_failed_auth_reset_period' => :'api_failed_auth_reset_period',
        :'minimum_password_length' => :'minimum_password_length',
        :'cli_failed_auth_lockout_period' => :'cli_failed_auth_lockout_period',
        :'api_max_auth_failures' => :'api_max_auth_failures',
        :'api_failed_auth_lockout_period' => :'api_failed_auth_lockout_period',
        :'cli_max_auth_failures' => :'cli_max_auth_failures'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'api_failed_auth_reset_period' => :'Integer',
        :'minimum_password_length' => :'Integer',
        :'cli_failed_auth_lockout_period' => :'Integer',
        :'api_max_auth_failures' => :'Integer',
        :'api_failed_auth_lockout_period' => :'Integer',
        :'cli_max_auth_failures' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'_self')
        self._self = attributes[:'_self']
      end

      if attributes.has_key?(:'_links')
        if (value = attributes[:'_links']).is_a?(Array)
          self._links = value
        end
      end

      if attributes.has_key?(:'_schema')
        self._schema = attributes[:'_schema']
      end

      if attributes.has_key?(:'api_failed_auth_reset_period')
        self.api_failed_auth_reset_period = attributes[:'api_failed_auth_reset_period']
      else
        self.api_failed_auth_reset_period = 900
      end

      if attributes.has_key?(:'minimum_password_length')
        self.minimum_password_length = attributes[:'minimum_password_length']
      else
        self.minimum_password_length = 8
      end

      if attributes.has_key?(:'cli_failed_auth_lockout_period')
        self.cli_failed_auth_lockout_period = attributes[:'cli_failed_auth_lockout_period']
      else
        self.cli_failed_auth_lockout_period = 900
      end

      if attributes.has_key?(:'api_max_auth_failures')
        self.api_max_auth_failures = attributes[:'api_max_auth_failures']
      else
        self.api_max_auth_failures = 5
      end

      if attributes.has_key?(:'api_failed_auth_lockout_period')
        self.api_failed_auth_lockout_period = attributes[:'api_failed_auth_lockout_period']
      else
        self.api_failed_auth_lockout_period = 900
      end

      if attributes.has_key?(:'cli_max_auth_failures')
        self.cli_max_auth_failures = attributes[:'cli_max_auth_failures']
      else
        self.cli_max_auth_failures = 5
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@api_failed_auth_reset_period.nil? && @api_failed_auth_reset_period < 0
        invalid_properties.push('invalid value for "api_failed_auth_reset_period", must be greater than or equal to 0.')
      end

      if !@minimum_password_length.nil? && @minimum_password_length < 8
        invalid_properties.push('invalid value for "minimum_password_length", must be greater than or equal to 8.')
      end

      if !@cli_failed_auth_lockout_period.nil? && @cli_failed_auth_lockout_period < 0
        invalid_properties.push('invalid value for "cli_failed_auth_lockout_period", must be greater than or equal to 0.')
      end

      if !@api_max_auth_failures.nil? && @api_max_auth_failures < 0
        invalid_properties.push('invalid value for "api_max_auth_failures", must be greater than or equal to 0.')
      end

      if !@api_failed_auth_lockout_period.nil? && @api_failed_auth_lockout_period < 0
        invalid_properties.push('invalid value for "api_failed_auth_lockout_period", must be greater than or equal to 0.')
      end

      if !@cli_max_auth_failures.nil? && @cli_max_auth_failures < 0
        invalid_properties.push('invalid value for "cli_max_auth_failures", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@api_failed_auth_reset_period.nil? && @api_failed_auth_reset_period < 0
      return false if !@minimum_password_length.nil? && @minimum_password_length < 8
      return false if !@cli_failed_auth_lockout_period.nil? && @cli_failed_auth_lockout_period < 0
      return false if !@api_max_auth_failures.nil? && @api_max_auth_failures < 0
      return false if !@api_failed_auth_lockout_period.nil? && @api_failed_auth_lockout_period < 0
      return false if !@cli_max_auth_failures.nil? && @cli_max_auth_failures < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] api_failed_auth_reset_period Value to be assigned
    def api_failed_auth_reset_period=(api_failed_auth_reset_period)
      if !api_failed_auth_reset_period.nil? && api_failed_auth_reset_period < 0
        fail ArgumentError, 'invalid value for "api_failed_auth_reset_period", must be greater than or equal to 0.'
      end

      @api_failed_auth_reset_period = api_failed_auth_reset_period
    end

    # Custom attribute writer method with validation
    # @param [Object] minimum_password_length Value to be assigned
    def minimum_password_length=(minimum_password_length)
      if !minimum_password_length.nil? && minimum_password_length < 8
        fail ArgumentError, 'invalid value for "minimum_password_length", must be greater than or equal to 8.'
      end

      @minimum_password_length = minimum_password_length
    end

    # Custom attribute writer method with validation
    # @param [Object] cli_failed_auth_lockout_period Value to be assigned
    def cli_failed_auth_lockout_period=(cli_failed_auth_lockout_period)
      if !cli_failed_auth_lockout_period.nil? && cli_failed_auth_lockout_period < 0
        fail ArgumentError, 'invalid value for "cli_failed_auth_lockout_period", must be greater than or equal to 0.'
      end

      @cli_failed_auth_lockout_period = cli_failed_auth_lockout_period
    end

    # Custom attribute writer method with validation
    # @param [Object] api_max_auth_failures Value to be assigned
    def api_max_auth_failures=(api_max_auth_failures)
      if !api_max_auth_failures.nil? && api_max_auth_failures < 0
        fail ArgumentError, 'invalid value for "api_max_auth_failures", must be greater than or equal to 0.'
      end

      @api_max_auth_failures = api_max_auth_failures
    end

    # Custom attribute writer method with validation
    # @param [Object] api_failed_auth_lockout_period Value to be assigned
    def api_failed_auth_lockout_period=(api_failed_auth_lockout_period)
      if !api_failed_auth_lockout_period.nil? && api_failed_auth_lockout_period < 0
        fail ArgumentError, 'invalid value for "api_failed_auth_lockout_period", must be greater than or equal to 0.'
      end

      @api_failed_auth_lockout_period = api_failed_auth_lockout_period
    end

    # Custom attribute writer method with validation
    # @param [Object] cli_max_auth_failures Value to be assigned
    def cli_max_auth_failures=(cli_max_auth_failures)
      if !cli_max_auth_failures.nil? && cli_max_auth_failures < 0
        fail ArgumentError, 'invalid value for "cli_max_auth_failures", must be greater than or equal to 0.'
      end

      @cli_max_auth_failures = cli_max_auth_failures
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          api_failed_auth_reset_period == o.api_failed_auth_reset_period &&
          minimum_password_length == o.minimum_password_length &&
          cli_failed_auth_lockout_period == o.cli_failed_auth_lockout_period &&
          api_max_auth_failures == o.api_max_auth_failures &&
          api_failed_auth_lockout_period == o.api_failed_auth_lockout_period &&
          cli_max_auth_failures == o.cli_max_auth_failures
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, api_failed_auth_reset_period, minimum_password_length, cli_failed_auth_lockout_period, api_max_auth_failures, api_failed_auth_lockout_period, cli_max_auth_failures].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
