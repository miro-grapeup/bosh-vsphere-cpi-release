=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module NSXT
  # Detailed feedback requests from the migration tool where user input is required.
  class MigrationFeedbackRequest
    # Indicates if a valid response already exist for this feedback request.
    attr_accessor :resolved

    # List of acceptable actions for this feedback request.
    attr_accessor :accepted_actions

    # Identify a feedback request type across objects. This can be used to group together objects with similar feedback request and resolve them in one go.
    attr_accessor :hash

    # Functional area that this query falls into.
    attr_accessor :vertical

    # Identifier for this object in the source NSX endpoint.
    attr_accessor :v_object_id

    # The suggested value to resolve this feedback request.
    attr_accessor :suggested_value

    # Detailed feedback request with options.
    attr_accessor :message

    # Identifier of the object for which feedback is requested.
    attr_accessor :object_id

    # Data type of the items listed in acceptable values list.
    attr_accessor :accepted_value_type

    # Name of this object in the source NSX endpoint.
    attr_accessor :v_object_name

    # Indicates if multiple values can be selected as response from the list of acceptable value.
    attr_accessor :multi_value

    # List of acceptable values for this feedback request.
    attr_accessor :accepted_values

    # Identifier of the feedback request.
    attr_accessor :id

    # The suggested action to resolve this feedback request.
    attr_accessor :suggested_action

    # Functional sub-area that this query falls into.
    attr_accessor :sub_vertical

    # If the feedback request was resolved earlier, provides details about the previous resolution.
    attr_accessor :resolution

    # Indicates if previous response was invalid. Please provide a valid response.
    attr_accessor :rejected

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'resolved' => :'resolved',
        :'accepted_actions' => :'accepted_actions',
        :'hash' => :'hash',
        :'vertical' => :'vertical',
        :'v_object_id' => :'v_object_id',
        :'suggested_value' => :'suggested_value',
        :'message' => :'message',
        :'object_id' => :'object_id',
        :'accepted_value_type' => :'accepted_value_type',
        :'v_object_name' => :'v_object_name',
        :'multi_value' => :'multi_value',
        :'accepted_values' => :'accepted_values',
        :'id' => :'id',
        :'suggested_action' => :'suggested_action',
        :'sub_vertical' => :'sub_vertical',
        :'resolution' => :'resolution',
        :'rejected' => :'rejected'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'resolved' => :'BOOLEAN',
        :'accepted_actions' => :'Array<String>',
        :'hash' => :'String',
        :'vertical' => :'String',
        :'v_object_id' => :'String',
        :'suggested_value' => :'String',
        :'message' => :'String',
        :'object_id' => :'String',
        :'accepted_value_type' => :'String',
        :'v_object_name' => :'String',
        :'multi_value' => :'BOOLEAN',
        :'accepted_values' => :'Array<String>',
        :'id' => :'String',
        :'suggested_action' => :'String',
        :'sub_vertical' => :'String',
        :'resolution' => :'String',
        :'rejected' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'resolved')
        self.resolved = attributes[:'resolved']
      end

      if attributes.has_key?(:'accepted_actions')
        if (value = attributes[:'accepted_actions']).is_a?(Array)
          self.accepted_actions = value
        end
      end

      if attributes.has_key?(:'hash')
        self.hash = attributes[:'hash']
      end

      if attributes.has_key?(:'vertical')
        self.vertical = attributes[:'vertical']
      end

      if attributes.has_key?(:'v_object_id')
        self.v_object_id = attributes[:'v_object_id']
      end

      if attributes.has_key?(:'suggested_value')
        self.suggested_value = attributes[:'suggested_value']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'object_id')
        self.object_id = attributes[:'object_id']
      end

      if attributes.has_key?(:'accepted_value_type')
        self.accepted_value_type = attributes[:'accepted_value_type']
      end

      if attributes.has_key?(:'v_object_name')
        self.v_object_name = attributes[:'v_object_name']
      end

      if attributes.has_key?(:'multi_value')
        self.multi_value = attributes[:'multi_value']
      end

      if attributes.has_key?(:'accepted_values')
        if (value = attributes[:'accepted_values']).is_a?(Array)
          self.accepted_values = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'suggested_action')
        self.suggested_action = attributes[:'suggested_action']
      end

      if attributes.has_key?(:'sub_vertical')
        self.sub_vertical = attributes[:'sub_vertical']
      end

      if attributes.has_key?(:'resolution')
        self.resolution = attributes[:'resolution']
      end

      if attributes.has_key?(:'rejected')
        self.rejected = attributes[:'rejected']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          resolved == o.resolved &&
          accepted_actions == o.accepted_actions &&
          hash == o.hash &&
          vertical == o.vertical &&
          v_object_id == o.v_object_id &&
          suggested_value == o.suggested_value &&
          message == o.message &&
          object_id == o.object_id &&
          accepted_value_type == o.accepted_value_type &&
          v_object_name == o.v_object_name &&
          multi_value == o.multi_value &&
          accepted_values == o.accepted_values &&
          id == o.id &&
          suggested_action == o.suggested_action &&
          sub_vertical == o.sub_vertical &&
          resolution == o.resolution &&
          rejected == o.rejected
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [resolved, accepted_actions, hash, vertical, v_object_id, suggested_value, message, object_id, accepted_value_type, v_object_name, multi_value, accepted_values, id, suggested_action, sub_vertical, resolution, rejected].hash
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