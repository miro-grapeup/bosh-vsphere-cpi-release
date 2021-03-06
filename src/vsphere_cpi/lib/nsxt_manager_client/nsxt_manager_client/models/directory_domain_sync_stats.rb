=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module NSXT
  # Directory domain synchronization statistics
  class DirectoryDomainSyncStats
    # Directory domain previous sync status. It could be one of the following two states.
    attr_accessor :prev_sync_status

    # All the historical full sync are counted in calculating the average full sync time in milliseconds.
    attr_accessor :avg_full_sync_time

    # Directory domain previous sync type. It could be one of the following three states. Right after the directory domain is configured, this field is set to IDLE.
    attr_accessor :prev_sync_type

    # number of successful historical full sync initiated either by system or by API request.
    attr_accessor :num_full_sync

    # Since what time the current state has begun. The time is expressed in millisecond epoch time.
    attr_accessor :current_state_begin_time

    # All the historical delta sync are counted in calculating the average delta sync time in milliseconds.
    attr_accessor :avg_delta_sync_time

    # Directory domain previous sync status error if last status was failure.
    attr_accessor :prev_sync_error

    # Current running state of the directory domain in synchronization life cycle. It could be one of the following three states.
    attr_accessor :current_state

    # number of successful historical delta sync initiated either by system or by API request.
    attr_accessor :num_delta_sync

    # Directory domain previous sync ending time expressed in millisecond epoch time.
    attr_accessor :prev_sync_end_time

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
        :'prev_sync_status' => :'prev_sync_status',
        :'avg_full_sync_time' => :'avg_full_sync_time',
        :'prev_sync_type' => :'prev_sync_type',
        :'num_full_sync' => :'num_full_sync',
        :'current_state_begin_time' => :'current_state_begin_time',
        :'avg_delta_sync_time' => :'avg_delta_sync_time',
        :'prev_sync_error' => :'prev_sync_error',
        :'current_state' => :'current_state',
        :'num_delta_sync' => :'num_delta_sync',
        :'prev_sync_end_time' => :'prev_sync_end_time'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'prev_sync_status' => :'String',
        :'avg_full_sync_time' => :'Integer',
        :'prev_sync_type' => :'String',
        :'num_full_sync' => :'Integer',
        :'current_state_begin_time' => :'Integer',
        :'avg_delta_sync_time' => :'Integer',
        :'prev_sync_error' => :'String',
        :'current_state' => :'String',
        :'num_delta_sync' => :'Integer',
        :'prev_sync_end_time' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'prev_sync_status')
        self.prev_sync_status = attributes[:'prev_sync_status']
      end

      if attributes.has_key?(:'avg_full_sync_time')
        self.avg_full_sync_time = attributes[:'avg_full_sync_time']
      end

      if attributes.has_key?(:'prev_sync_type')
        self.prev_sync_type = attributes[:'prev_sync_type']
      end

      if attributes.has_key?(:'num_full_sync')
        self.num_full_sync = attributes[:'num_full_sync']
      end

      if attributes.has_key?(:'current_state_begin_time')
        self.current_state_begin_time = attributes[:'current_state_begin_time']
      end

      if attributes.has_key?(:'avg_delta_sync_time')
        self.avg_delta_sync_time = attributes[:'avg_delta_sync_time']
      end

      if attributes.has_key?(:'prev_sync_error')
        self.prev_sync_error = attributes[:'prev_sync_error']
      end

      if attributes.has_key?(:'current_state')
        self.current_state = attributes[:'current_state']
      end

      if attributes.has_key?(:'num_delta_sync')
        self.num_delta_sync = attributes[:'num_delta_sync']
      end

      if attributes.has_key?(:'prev_sync_end_time')
        self.prev_sync_end_time = attributes[:'prev_sync_end_time']
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
      prev_sync_status_validator = EnumAttributeValidator.new('String', ['SUCCESS', 'FAILURE', 'UNKNOWN'])
      return false unless prev_sync_status_validator.valid?(@prev_sync_status)
      prev_sync_type_validator = EnumAttributeValidator.new('String', ['IDLE', 'FULL_SYNC', 'DELTA_SYNC'])
      return false unless prev_sync_type_validator.valid?(@prev_sync_type)
      current_state_validator = EnumAttributeValidator.new('String', ['IDLE', 'FULL_SYNC', 'DELTA_SYNC'])
      return false unless current_state_validator.valid?(@current_state)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prev_sync_status Object to be assigned
    def prev_sync_status=(prev_sync_status)
      validator = EnumAttributeValidator.new('String', ['SUCCESS', 'FAILURE', 'UNKNOWN'])
      unless validator.valid?(prev_sync_status)
        fail ArgumentError, 'invalid value for "prev_sync_status", must be one of #{validator.allowable_values}.'
      end
      @prev_sync_status = prev_sync_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prev_sync_type Object to be assigned
    def prev_sync_type=(prev_sync_type)
      validator = EnumAttributeValidator.new('String', ['IDLE', 'FULL_SYNC', 'DELTA_SYNC'])
      unless validator.valid?(prev_sync_type)
        fail ArgumentError, 'invalid value for "prev_sync_type", must be one of #{validator.allowable_values}.'
      end
      @prev_sync_type = prev_sync_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] current_state Object to be assigned
    def current_state=(current_state)
      validator = EnumAttributeValidator.new('String', ['IDLE', 'FULL_SYNC', 'DELTA_SYNC'])
      unless validator.valid?(current_state)
        fail ArgumentError, 'invalid value for "current_state", must be one of #{validator.allowable_values}.'
      end
      @current_state = current_state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          prev_sync_status == o.prev_sync_status &&
          avg_full_sync_time == o.avg_full_sync_time &&
          prev_sync_type == o.prev_sync_type &&
          num_full_sync == o.num_full_sync &&
          current_state_begin_time == o.current_state_begin_time &&
          avg_delta_sync_time == o.avg_delta_sync_time &&
          prev_sync_error == o.prev_sync_error &&
          current_state == o.current_state &&
          num_delta_sync == o.num_delta_sync &&
          prev_sync_end_time == o.prev_sync_end_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [prev_sync_status, avg_full_sync_time, prev_sync_type, num_full_sync, current_state_begin_time, avg_delta_sync_time, prev_sync_error, current_state, num_delta_sync, prev_sync_end_time].hash
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
