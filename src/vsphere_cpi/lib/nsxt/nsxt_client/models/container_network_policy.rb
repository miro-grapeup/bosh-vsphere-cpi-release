=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module NSXT
  # Network policy applied to container.
  class ContainerNetworkPolicy
    # Link to this resource
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # Timestamp of last modification
    attr_accessor :_last_sync_time

    # Defaults to ID if not set
    attr_accessor :display_name

    # Description of this resource
    attr_accessor :description

    # The type of this resource.
    attr_accessor :resource_type

    # Opaque identifiers meaningful to the API user
    attr_accessor :tags

    # Identifier of the container cluster this network policy belongs to.
    attr_accessor :container_cluster_id

    # Type e.g. Network Policy, ASG.
    attr_accessor :policy_type

    # Array of additional specific properties of container network policy in key-value format. 
    attr_accessor :origin_properties

    # Identifier of the container network policy.
    attr_accessor :external_id

    # Container network policy specification.
    attr_accessor :spec

    # Identifier of the project which this network policy belongs to.
    attr_accessor :container_project_id

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
        :'_self' => :'_self',
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'_last_sync_time' => :'_last_sync_time',
        :'display_name' => :'display_name',
        :'description' => :'description',
        :'resource_type' => :'resource_type',
        :'tags' => :'tags',
        :'container_cluster_id' => :'container_cluster_id',
        :'policy_type' => :'policy_type',
        :'origin_properties' => :'origin_properties',
        :'external_id' => :'external_id',
        :'spec' => :'spec',
        :'container_project_id' => :'container_project_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'_last_sync_time' => :'Integer',
        :'display_name' => :'String',
        :'description' => :'String',
        :'resource_type' => :'String',
        :'tags' => :'Array<Tag>',
        :'container_cluster_id' => :'String',
        :'policy_type' => :'String',
        :'origin_properties' => :'Array<KeyValuePair>',
        :'external_id' => :'String',
        :'spec' => :'String',
        :'container_project_id' => :'String'
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

      if attributes.has_key?(:'_last_sync_time')
        self._last_sync_time = attributes[:'_last_sync_time']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'container_cluster_id')
        self.container_cluster_id = attributes[:'container_cluster_id']
      end

      if attributes.has_key?(:'policy_type')
        self.policy_type = attributes[:'policy_type']
      end

      if attributes.has_key?(:'origin_properties')
        if (value = attributes[:'origin_properties']).is_a?(Array)
          self.origin_properties = value
        end
      end

      if attributes.has_key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.has_key?(:'spec')
        self.spec = attributes[:'spec']
      end

      if attributes.has_key?(:'container_project_id')
        self.container_project_id = attributes[:'container_project_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@display_name.nil? && @display_name.to_s.length > 255
        invalid_properties.push('invalid value for "display_name", the character length must be smaller than or equal to 255.')
      end

      if !@description.nil? && @description.to_s.length > 1024
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 1024.')
      end

      if @resource_type.nil?
        invalid_properties.push('invalid value for "resource_type", resource_type cannot be nil.')
      end

      if @external_id.nil?
        invalid_properties.push('invalid value for "external_id", external_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      return false if @resource_type.nil?
      policy_type_validator = EnumAttributeValidator.new('String', ['NETWORK_POLICY', 'ASG'])
      return false unless policy_type_validator.valid?(@policy_type)
      return false if @external_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] display_name Value to be assigned
    def display_name=(display_name)
      if !display_name.nil? && display_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "display_name", the character length must be smaller than or equal to 255.'
      end

      @display_name = display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 1024
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 1024.'
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] policy_type Object to be assigned
    def policy_type=(policy_type)
      validator = EnumAttributeValidator.new('String', ['NETWORK_POLICY', 'ASG'])
      unless validator.valid?(policy_type)
        fail ArgumentError, 'invalid value for "policy_type", must be one of #{validator.allowable_values}.'
      end
      @policy_type = policy_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          _last_sync_time == o._last_sync_time &&
          display_name == o.display_name &&
          description == o.description &&
          resource_type == o.resource_type &&
          tags == o.tags &&
          container_cluster_id == o.container_cluster_id &&
          policy_type == o.policy_type &&
          origin_properties == o.origin_properties &&
          external_id == o.external_id &&
          spec == o.spec &&
          container_project_id == o.container_project_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _last_sync_time, display_name, description, resource_type, tags, container_cluster_id, policy_type, origin_properties, external_id, spec, container_project_id].hash
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
