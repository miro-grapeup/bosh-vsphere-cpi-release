=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module NSXT
  class LogicalRouter
    # Link to this resource
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # The _revision property describes the current revision of the resource. To prevent clients from overwriting each other's changes, PUT operations must include the current _revision of the resource, which clients should obtain by issuing a GET operation. If the _revision provided in a PUT request is missing or stale, the operation will be rejected.
    attr_accessor :_revision

    # Indicates system owned resource
    attr_accessor :_system_owned

    # Defaults to ID if not set
    attr_accessor :display_name

    # Description of this resource
    attr_accessor :description

    # Opaque identifiers meaningful to the API user
    attr_accessor :tags

    # ID of the user who created this resource
    attr_accessor :_create_user

    # Protection status is one of the following: PROTECTED - the client who retrieved the entity is not allowed             to modify it. NOT_PROTECTED - the client who retrieved the entity is allowed                 to modify it REQUIRE_OVERRIDE - the client who retrieved the entity is a super                    user and can modify it, but only when providing                    the request header X-Allow-Overwrite=true. UNKNOWN - the _protection field could not be determined for this           entity. 
    attr_accessor :_protection

    # Timestamp of resource creation
    attr_accessor :_create_time

    # Timestamp of last modification
    attr_accessor :_last_modified_time

    # ID of the user who last modified this resource
    attr_accessor :_last_modified_user

    # Unique identifier of this resource
    attr_accessor :id

    # The type of this resource.
    attr_accessor :resource_type

    # For stateful services, the logical router should be associated with edge cluster. For TIER 1 logical router, for manual placement of service router within the cluster, edge cluster member indices needs to be provided else same will be auto-allocated. You can provide maximum two indices for HA ACTIVE_STANDBY. For TIER0 logical router this property is no use and placement is derived from logical router uplink or loopback port. 
    attr_accessor :edge_cluster_member_indices

    # IPv6Profiles captures IPv6 NDRA Profile and DAD Profile id associated with the logical router. 
    attr_accessor :ipv6_profiles

    # Configurations options to auto allocate edge cluster members for logical router. Auto allocation is supported only for TIER1 and pick least utilized member post current assignment for next allocation. 
    attr_accessor :allocation_profile

    # List of Firewall sections related to Logical Router.
    attr_accessor :firewall_sections

    # Determines the behavior when a logical router instance restarts after a failure. If set to PREEMPTIVE, the preferred node will take over, even if it causes another failure. If set to NON_PREEMPTIVE, then the instance that restarted will remain secondary. This property must not be populated unless the high_availability_mode property is set to ACTIVE_STANDBY. If high_availability_mode property is set to ACTIVE_STANDBY and this property is not specified then default will be NON_PREEMPTIVE. 
    attr_accessor :failover_mode

    # Contains config properties for tier0 routers
    attr_accessor :advanced_config

    # Type of Logical Router
    attr_accessor :router_type

    # Preferred edge cluster member index which is required for PREEMPTIVE failover mode. Used for Tier0 routers only. 
    attr_accessor :preferred_edge_cluster_member_index

    # High availability mode
    attr_accessor :high_availability_mode

    # Used for tier0 routers
    attr_accessor :edge_cluster_id

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
        :'_revision' => :'_revision',
        :'_system_owned' => :'_system_owned',
        :'display_name' => :'display_name',
        :'description' => :'description',
        :'tags' => :'tags',
        :'_create_user' => :'_create_user',
        :'_protection' => :'_protection',
        :'_create_time' => :'_create_time',
        :'_last_modified_time' => :'_last_modified_time',
        :'_last_modified_user' => :'_last_modified_user',
        :'id' => :'id',
        :'resource_type' => :'resource_type',
        :'edge_cluster_member_indices' => :'edge_cluster_member_indices',
        :'ipv6_profiles' => :'ipv6_profiles',
        :'allocation_profile' => :'allocation_profile',
        :'firewall_sections' => :'firewall_sections',
        :'failover_mode' => :'failover_mode',
        :'advanced_config' => :'advanced_config',
        :'router_type' => :'router_type',
        :'preferred_edge_cluster_member_index' => :'preferred_edge_cluster_member_index',
        :'high_availability_mode' => :'high_availability_mode',
        :'edge_cluster_id' => :'edge_cluster_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'_revision' => :'Integer',
        :'_system_owned' => :'BOOLEAN',
        :'display_name' => :'String',
        :'description' => :'String',
        :'tags' => :'Array<Tag>',
        :'_create_user' => :'String',
        :'_protection' => :'String',
        :'_create_time' => :'Integer',
        :'_last_modified_time' => :'Integer',
        :'_last_modified_user' => :'String',
        :'id' => :'String',
        :'resource_type' => :'String',
        :'edge_cluster_member_indices' => :'Array<Integer>',
        :'ipv6_profiles' => :'IPv6Profiles',
        :'allocation_profile' => :'EdgeClusterMemberAllocationProfile',
        :'firewall_sections' => :'Array<ResourceReference>',
        :'failover_mode' => :'String',
        :'advanced_config' => :'LogicalRouterConfig',
        :'router_type' => :'String',
        :'preferred_edge_cluster_member_index' => :'Integer',
        :'high_availability_mode' => :'String',
        :'edge_cluster_id' => :'String'
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

      if attributes.has_key?(:'_revision')
        self._revision = attributes[:'_revision']
      end

      if attributes.has_key?(:'_system_owned')
        self._system_owned = attributes[:'_system_owned']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'_create_user')
        self._create_user = attributes[:'_create_user']
      end

      if attributes.has_key?(:'_protection')
        self._protection = attributes[:'_protection']
      end

      if attributes.has_key?(:'_create_time')
        self._create_time = attributes[:'_create_time']
      end

      if attributes.has_key?(:'_last_modified_time')
        self._last_modified_time = attributes[:'_last_modified_time']
      end

      if attributes.has_key?(:'_last_modified_user')
        self._last_modified_user = attributes[:'_last_modified_user']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'edge_cluster_member_indices')
        if (value = attributes[:'edge_cluster_member_indices']).is_a?(Array)
          self.edge_cluster_member_indices = value
        end
      end

      if attributes.has_key?(:'ipv6_profiles')
        self.ipv6_profiles = attributes[:'ipv6_profiles']
      end

      if attributes.has_key?(:'allocation_profile')
        self.allocation_profile = attributes[:'allocation_profile']
      end

      if attributes.has_key?(:'firewall_sections')
        if (value = attributes[:'firewall_sections']).is_a?(Array)
          self.firewall_sections = value
        end
      end

      if attributes.has_key?(:'failover_mode')
        self.failover_mode = attributes[:'failover_mode']
      end

      if attributes.has_key?(:'advanced_config')
        self.advanced_config = attributes[:'advanced_config']
      end

      if attributes.has_key?(:'router_type')
        self.router_type = attributes[:'router_type']
      end

      if attributes.has_key?(:'preferred_edge_cluster_member_index')
        self.preferred_edge_cluster_member_index = attributes[:'preferred_edge_cluster_member_index']
      end

      if attributes.has_key?(:'high_availability_mode')
        self.high_availability_mode = attributes[:'high_availability_mode']
      end

      if attributes.has_key?(:'edge_cluster_id')
        self.edge_cluster_id = attributes[:'edge_cluster_id']
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

      if @router_type.nil?
        invalid_properties.push('invalid value for "router_type", router_type cannot be nil.')
      end

      if !@preferred_edge_cluster_member_index.nil? && @preferred_edge_cluster_member_index < 0
        invalid_properties.push('invalid value for "preferred_edge_cluster_member_index", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      failover_mode_validator = EnumAttributeValidator.new('String', ['PREEMPTIVE', 'NON_PREEMPTIVE'])
      return false unless failover_mode_validator.valid?(@failover_mode)
      return false if @router_type.nil?
      router_type_validator = EnumAttributeValidator.new('String', ['TIER0', 'TIER1'])
      return false unless router_type_validator.valid?(@router_type)
      return false if !@preferred_edge_cluster_member_index.nil? && @preferred_edge_cluster_member_index < 0
      high_availability_mode_validator = EnumAttributeValidator.new('String', ['ACTIVE_ACTIVE', 'ACTIVE_STANDBY'])
      return false unless high_availability_mode_validator.valid?(@high_availability_mode)
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
    # @param [Object] failover_mode Object to be assigned
    def failover_mode=(failover_mode)
      validator = EnumAttributeValidator.new('String', ['PREEMPTIVE', 'NON_PREEMPTIVE'])
      unless validator.valid?(failover_mode)
        fail ArgumentError, 'invalid value for "failover_mode", must be one of #{validator.allowable_values}.'
      end
      @failover_mode = failover_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] router_type Object to be assigned
    def router_type=(router_type)
      validator = EnumAttributeValidator.new('String', ['TIER0', 'TIER1'])
      unless validator.valid?(router_type)
        fail ArgumentError, 'invalid value for "router_type", must be one of #{validator.allowable_values}.'
      end
      @router_type = router_type
    end

    # Custom attribute writer method with validation
    # @param [Object] preferred_edge_cluster_member_index Value to be assigned
    def preferred_edge_cluster_member_index=(preferred_edge_cluster_member_index)
      if !preferred_edge_cluster_member_index.nil? && preferred_edge_cluster_member_index < 0
        fail ArgumentError, 'invalid value for "preferred_edge_cluster_member_index", must be greater than or equal to 0.'
      end

      @preferred_edge_cluster_member_index = preferred_edge_cluster_member_index
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] high_availability_mode Object to be assigned
    def high_availability_mode=(high_availability_mode)
      validator = EnumAttributeValidator.new('String', ['ACTIVE_ACTIVE', 'ACTIVE_STANDBY'])
      unless validator.valid?(high_availability_mode)
        fail ArgumentError, 'invalid value for "high_availability_mode", must be one of #{validator.allowable_values}.'
      end
      @high_availability_mode = high_availability_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          _revision == o._revision &&
          _system_owned == o._system_owned &&
          display_name == o.display_name &&
          description == o.description &&
          tags == o.tags &&
          _create_user == o._create_user &&
          _protection == o._protection &&
          _create_time == o._create_time &&
          _last_modified_time == o._last_modified_time &&
          _last_modified_user == o._last_modified_user &&
          id == o.id &&
          resource_type == o.resource_type &&
          edge_cluster_member_indices == o.edge_cluster_member_indices &&
          ipv6_profiles == o.ipv6_profiles &&
          allocation_profile == o.allocation_profile &&
          firewall_sections == o.firewall_sections &&
          failover_mode == o.failover_mode &&
          advanced_config == o.advanced_config &&
          router_type == o.router_type &&
          preferred_edge_cluster_member_index == o.preferred_edge_cluster_member_index &&
          high_availability_mode == o.high_availability_mode &&
          edge_cluster_id == o.edge_cluster_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, edge_cluster_member_indices, ipv6_profiles, allocation_profile, firewall_sections, failover_mode, advanced_config, router_type, preferred_edge_cluster_member_index, high_availability_mode, edge_cluster_id].hash
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
