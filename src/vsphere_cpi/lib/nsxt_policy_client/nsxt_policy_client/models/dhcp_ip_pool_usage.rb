=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module NSXTPolicy
  class DhcpIpPoolUsage
    # allocated percentage. COULD BE INACCURATE, REFERENCE ONLY.
    attr_accessor :allocated_percentage

    # pool size
    attr_accessor :pool_size

    # allocated number. COULD BE INACCURATE, REFERENCE ONLY.
    attr_accessor :allocated_number

    # uuid of dhcp ip pool
    attr_accessor :dhcp_ip_pool_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allocated_percentage' => :'allocated_percentage',
        :'pool_size' => :'pool_size',
        :'allocated_number' => :'allocated_number',
        :'dhcp_ip_pool_id' => :'dhcp_ip_pool_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allocated_percentage' => :'Integer',
        :'pool_size' => :'Integer',
        :'allocated_number' => :'Integer',
        :'dhcp_ip_pool_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'allocated_percentage')
        self.allocated_percentage = attributes[:'allocated_percentage']
      end

      if attributes.has_key?(:'pool_size')
        self.pool_size = attributes[:'pool_size']
      end

      if attributes.has_key?(:'allocated_number')
        self.allocated_number = attributes[:'allocated_number']
      end

      if attributes.has_key?(:'dhcp_ip_pool_id')
        self.dhcp_ip_pool_id = attributes[:'dhcp_ip_pool_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @allocated_percentage.nil?
        invalid_properties.push('invalid value for "allocated_percentage", allocated_percentage cannot be nil.')
      end

      if @pool_size.nil?
        invalid_properties.push('invalid value for "pool_size", pool_size cannot be nil.')
      end

      if @allocated_number.nil?
        invalid_properties.push('invalid value for "allocated_number", allocated_number cannot be nil.')
      end

      if @dhcp_ip_pool_id.nil?
        invalid_properties.push('invalid value for "dhcp_ip_pool_id", dhcp_ip_pool_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @allocated_percentage.nil?
      return false if @pool_size.nil?
      return false if @allocated_number.nil?
      return false if @dhcp_ip_pool_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allocated_percentage == o.allocated_percentage &&
          pool_size == o.pool_size &&
          allocated_number == o.allocated_number &&
          dhcp_ip_pool_id == o.dhcp_ip_pool_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allocated_percentage, pool_size, allocated_number, dhcp_ip_pool_id].hash
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
        temp_model = NSXTPolicy.const_get(type).new
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
