=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module NSXT
  class RuleStatistics
    # Link to this resource
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # Aggregated number of sessions processed by all the rules This is aggregated statistic which are computed with lower frequency compared to individual generic rule  statistics. It may have a computation delay up to 15 minutes in response to this API. 
    attr_accessor :total_session_count

    # This is calculated by sessions count divided by age of the rule.
    attr_accessor :popularity_index

    # Maximum value of sessions count of all rules of the type. This is aggregated statistic which are computed with lower frequency compared to generic rule statistics. It may have a computation delay up to 15 minutes in response to this API. 
    attr_accessor :max_session_count

    # Aggregated number of bytes processed by the rule. 
    attr_accessor :byte_count

    # Maximum value of popularity index of all rules of the type. This is aggregated statistic which are computed with lower frequency compared to individual generic rule statistics. It may have a computation delay up to 15 minutes in response to this API. 
    attr_accessor :max_popularity_index

    # Aggregated number of sessions processed by the rule. 
    attr_accessor :session_count

    # Path of the rule.
    attr_accessor :rule

    # Aggregated number of packets processed by the rule. 
    attr_accessor :packet_count

    # Realized id of the rule on NSX MP. Policy Manager can create more than one rule per policy rule, in which case this identifier helps to distinguish between the multple rules created. 
    attr_accessor :internal_rule_id

    # Aggregated number of hits received by the rule.
    attr_accessor :hit_count

    # Path of the LR on which the section is applied in case of Edge FW.
    attr_accessor :lr_path

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_self' => :'_self',
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'total_session_count' => :'total_session_count',
        :'popularity_index' => :'popularity_index',
        :'max_session_count' => :'max_session_count',
        :'byte_count' => :'byte_count',
        :'max_popularity_index' => :'max_popularity_index',
        :'session_count' => :'session_count',
        :'rule' => :'rule',
        :'packet_count' => :'packet_count',
        :'internal_rule_id' => :'internal_rule_id',
        :'hit_count' => :'hit_count',
        :'lr_path' => :'lr_path'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'total_session_count' => :'Integer',
        :'popularity_index' => :'Integer',
        :'max_session_count' => :'Integer',
        :'byte_count' => :'Integer',
        :'max_popularity_index' => :'Integer',
        :'session_count' => :'Integer',
        :'rule' => :'String',
        :'packet_count' => :'Integer',
        :'internal_rule_id' => :'String',
        :'hit_count' => :'Integer',
        :'lr_path' => :'String'
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

      if attributes.has_key?(:'total_session_count')
        self.total_session_count = attributes[:'total_session_count']
      end

      if attributes.has_key?(:'popularity_index')
        self.popularity_index = attributes[:'popularity_index']
      end

      if attributes.has_key?(:'max_session_count')
        self.max_session_count = attributes[:'max_session_count']
      end

      if attributes.has_key?(:'byte_count')
        self.byte_count = attributes[:'byte_count']
      end

      if attributes.has_key?(:'max_popularity_index')
        self.max_popularity_index = attributes[:'max_popularity_index']
      end

      if attributes.has_key?(:'session_count')
        self.session_count = attributes[:'session_count']
      end

      if attributes.has_key?(:'rule')
        self.rule = attributes[:'rule']
      end

      if attributes.has_key?(:'packet_count')
        self.packet_count = attributes[:'packet_count']
      end

      if attributes.has_key?(:'internal_rule_id')
        self.internal_rule_id = attributes[:'internal_rule_id']
      end

      if attributes.has_key?(:'hit_count')
        self.hit_count = attributes[:'hit_count']
      end

      if attributes.has_key?(:'lr_path')
        self.lr_path = attributes[:'lr_path']
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
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          total_session_count == o.total_session_count &&
          popularity_index == o.popularity_index &&
          max_session_count == o.max_session_count &&
          byte_count == o.byte_count &&
          max_popularity_index == o.max_popularity_index &&
          session_count == o.session_count &&
          rule == o.rule &&
          packet_count == o.packet_count &&
          internal_rule_id == o.internal_rule_id &&
          hit_count == o.hit_count &&
          lr_path == o.lr_path
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, total_session_count, popularity_index, max_session_count, byte_count, max_popularity_index, session_count, rule, packet_count, internal_rule_id, hit_count, lr_path].hash
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
