=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module NSXTPolicy
  # Represents an instance of partner Service and its configuration. 
  class PolicyServiceInstance
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

    # Absolute path of this object
    attr_accessor :path

    # Path of its parent
    attr_accessor :parent_path

    # This is a UUID generated by the GM/LM to uniquely identify entites in a federated environment. For entities that are stretched across multiple sites, the same ID will be used on all the stretched sites. 
    attr_accessor :unique_id

    # Path relative from its parent
    attr_accessor :relative_path

    # subtree for this type within policy tree containing nested elements. 
    attr_accessor :children

    # Global intent objects cannot be modified by the user. However, certain global intent objects can be overridden locally by use of this property. In such cases, the overridden local values take precedence over the globally defined values for the properties. 
    attr_accessor :overridden

    # Intent objects are not directly deleted from the system when a delete is invoked on them. They are marked for deletion and only when all the realized entities for that intent object gets deleted, the intent object is deleted. Objects that are marked for deletion are not returned in GET call. One can use the search API to get these objects. 
    attr_accessor :marked_for_delete

    # Unique name of Partner Service in the Marketplace
    attr_accessor :partner_service_name

    # Transport to be used while deploying Service-VM.
    attr_accessor :transport_type

    # Deployment mode specifies how the partner appliance will be deployed i.e. in HA or standalone mode.
    attr_accessor :deployment_mode

    # Management IP Address of primary interface of the Service
    attr_accessor :primary_interface_mgmt_ip

    # Id of the standard or ditsributed port group for secondary management console. Please note that only 1 of the 2 values from 1. secondary_interface_network 2. secondary_portgroup_id are allowed to be passed. Both can't be passed in the same request. 
    attr_accessor :secondary_portgroup_id

    # UUID of VCenter/Compute Manager as seen on NSX Manager, to which this service needs to be deployed.
    attr_accessor :context_id

    # Id of the standard or ditsributed port group for primary management console. Please note that only 1 of the 2 values from 1. primary_interface_network 2. primary_portgroup_id are allowed to be passed. Both can't be passed in the same request. 
    attr_accessor :primary_portgroup_id

    # Management IP Address of secondary interface of the Service
    attr_accessor :secondary_interface_mgmt_ip

    # Id of the compute(ResourcePool) to which this service needs to be deployed.
    attr_accessor :compute_id

    # Form factor for the deployment of partner service.
    attr_accessor :deployment_spec_name

    # Template for the deployment of partnet service.
    attr_accessor :deployment_template_name

    # Gateway address for secondary management console. If the provided segment already has gateway, this field can be omitted. But if it is provided, it takes precedence always. However, if provided segment does not have gateway, this field must be provided. 
    attr_accessor :secondary_gateway_address

    # Id of the storage(Datastore). VC moref of Datastore to which this service needs to be deployed.
    attr_accessor :storage_id

    # Subnet for secondary management console IP. If the provided segment already has subnet, this field can be omitted. But if it is provided, it takes precedence always. However, if provided segment does not have subnet, this field must be provided. 
    attr_accessor :secondary_subnet_mask

    # List of attributes specific to a partner for which the service is created. There attributes are passed on to the partner appliance.
    attr_accessor :attributes

    # Subnet for primary management console IP. If the provided segment already has subnet, this field can be omitted. But if it is provided, it takes precedence always. However, if provided segment does not have subnet, this field must be provided. 
    attr_accessor :primary_subnet_mask

    # Gateway address for primary management console. If the provided segment already has gateway, this field can be omitted. But if it is provided, it takes precedence always. However, if provided segment does not have gateway, this field must be provided. 
    attr_accessor :primary_gateway_address

    # Path of the segment to which primary interface of the Service VM needs to be connected
    attr_accessor :primary_interface_network

    # Path of segment to which secondary interface of the Service VM needs to be connected
    attr_accessor :secondary_interface_network

    # Failure policy for the Service VM. If this values is not provided, it will be defaulted to FAIL_CLOSE.
    attr_accessor :failure_policy

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
        :'path' => :'path',
        :'parent_path' => :'parent_path',
        :'unique_id' => :'unique_id',
        :'relative_path' => :'relative_path',
        :'children' => :'children',
        :'overridden' => :'overridden',
        :'marked_for_delete' => :'marked_for_delete',
        :'partner_service_name' => :'partner_service_name',
        :'transport_type' => :'transport_type',
        :'deployment_mode' => :'deployment_mode',
        :'primary_interface_mgmt_ip' => :'primary_interface_mgmt_ip',
        :'secondary_portgroup_id' => :'secondary_portgroup_id',
        :'context_id' => :'context_id',
        :'primary_portgroup_id' => :'primary_portgroup_id',
        :'secondary_interface_mgmt_ip' => :'secondary_interface_mgmt_ip',
        :'compute_id' => :'compute_id',
        :'deployment_spec_name' => :'deployment_spec_name',
        :'deployment_template_name' => :'deployment_template_name',
        :'secondary_gateway_address' => :'secondary_gateway_address',
        :'storage_id' => :'storage_id',
        :'secondary_subnet_mask' => :'secondary_subnet_mask',
        :'attributes' => :'attributes',
        :'primary_subnet_mask' => :'primary_subnet_mask',
        :'primary_gateway_address' => :'primary_gateway_address',
        :'primary_interface_network' => :'primary_interface_network',
        :'secondary_interface_network' => :'secondary_interface_network',
        :'failure_policy' => :'failure_policy'
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
        :'path' => :'String',
        :'parent_path' => :'String',
        :'unique_id' => :'String',
        :'relative_path' => :'String',
        :'children' => :'Array<ChildPolicyConfigResource>',
        :'overridden' => :'BOOLEAN',
        :'marked_for_delete' => :'BOOLEAN',
        :'partner_service_name' => :'String',
        :'transport_type' => :'String',
        :'deployment_mode' => :'String',
        :'primary_interface_mgmt_ip' => :'String',
        :'secondary_portgroup_id' => :'String',
        :'context_id' => :'String',
        :'primary_portgroup_id' => :'String',
        :'secondary_interface_mgmt_ip' => :'String',
        :'compute_id' => :'String',
        :'deployment_spec_name' => :'String',
        :'deployment_template_name' => :'String',
        :'secondary_gateway_address' => :'String',
        :'storage_id' => :'String',
        :'secondary_subnet_mask' => :'String',
        :'attributes' => :'Array<Attribute>',
        :'primary_subnet_mask' => :'String',
        :'primary_gateway_address' => :'String',
        :'primary_interface_network' => :'String',
        :'secondary_interface_network' => :'String',
        :'failure_policy' => :'String'
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

      if attributes.has_key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.has_key?(:'parent_path')
        self.parent_path = attributes[:'parent_path']
      end

      if attributes.has_key?(:'unique_id')
        self.unique_id = attributes[:'unique_id']
      end

      if attributes.has_key?(:'relative_path')
        self.relative_path = attributes[:'relative_path']
      end

      if attributes.has_key?(:'children')
        if (value = attributes[:'children']).is_a?(Array)
          self.children = value
        end
      end

      if attributes.has_key?(:'overridden')
        self.overridden = attributes[:'overridden']
      else
        self.overridden = false
      end

      if attributes.has_key?(:'marked_for_delete')
        self.marked_for_delete = attributes[:'marked_for_delete']
      else
        self.marked_for_delete = false
      end

      if attributes.has_key?(:'partner_service_name')
        self.partner_service_name = attributes[:'partner_service_name']
      end

      if attributes.has_key?(:'transport_type')
        self.transport_type = attributes[:'transport_type']
      else
        self.transport_type = 'L2_BRIDGE'
      end

      if attributes.has_key?(:'deployment_mode')
        self.deployment_mode = attributes[:'deployment_mode']
      else
        self.deployment_mode = 'ACTIVE_STANDBY'
      end

      if attributes.has_key?(:'primary_interface_mgmt_ip')
        self.primary_interface_mgmt_ip = attributes[:'primary_interface_mgmt_ip']
      end

      if attributes.has_key?(:'secondary_portgroup_id')
        self.secondary_portgroup_id = attributes[:'secondary_portgroup_id']
      end

      if attributes.has_key?(:'context_id')
        self.context_id = attributes[:'context_id']
      end

      if attributes.has_key?(:'primary_portgroup_id')
        self.primary_portgroup_id = attributes[:'primary_portgroup_id']
      end

      if attributes.has_key?(:'secondary_interface_mgmt_ip')
        self.secondary_interface_mgmt_ip = attributes[:'secondary_interface_mgmt_ip']
      end

      if attributes.has_key?(:'compute_id')
        self.compute_id = attributes[:'compute_id']
      end

      if attributes.has_key?(:'deployment_spec_name')
        self.deployment_spec_name = attributes[:'deployment_spec_name']
      end

      if attributes.has_key?(:'deployment_template_name')
        self.deployment_template_name = attributes[:'deployment_template_name']
      end

      if attributes.has_key?(:'secondary_gateway_address')
        self.secondary_gateway_address = attributes[:'secondary_gateway_address']
      end

      if attributes.has_key?(:'storage_id')
        self.storage_id = attributes[:'storage_id']
      end

      if attributes.has_key?(:'secondary_subnet_mask')
        self.secondary_subnet_mask = attributes[:'secondary_subnet_mask']
      end

      if attributes.has_key?(:'attributes')
        if (value = attributes[:'attributes']).is_a?(Array)
          self.attributes = value
        end
      end

      if attributes.has_key?(:'primary_subnet_mask')
        self.primary_subnet_mask = attributes[:'primary_subnet_mask']
      end

      if attributes.has_key?(:'primary_gateway_address')
        self.primary_gateway_address = attributes[:'primary_gateway_address']
      end

      if attributes.has_key?(:'primary_interface_network')
        self.primary_interface_network = attributes[:'primary_interface_network']
      end

      if attributes.has_key?(:'secondary_interface_network')
        self.secondary_interface_network = attributes[:'secondary_interface_network']
      end

      if attributes.has_key?(:'failure_policy')
        self.failure_policy = attributes[:'failure_policy']
      else
        self.failure_policy = 'BLOCK'
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

      if @partner_service_name.nil?
        invalid_properties.push('invalid value for "partner_service_name", partner_service_name cannot be nil.')
      end

      if @primary_interface_mgmt_ip.nil?
        invalid_properties.push('invalid value for "primary_interface_mgmt_ip", primary_interface_mgmt_ip cannot be nil.')
      end

      if @compute_id.nil?
        invalid_properties.push('invalid value for "compute_id", compute_id cannot be nil.')
      end

      if @deployment_spec_name.nil?
        invalid_properties.push('invalid value for "deployment_spec_name", deployment_spec_name cannot be nil.')
      end

      if @deployment_template_name.nil?
        invalid_properties.push('invalid value for "deployment_template_name", deployment_template_name cannot be nil.')
      end

      if @storage_id.nil?
        invalid_properties.push('invalid value for "storage_id", storage_id cannot be nil.')
      end

      if @attributes.nil?
        invalid_properties.push('invalid value for "attributes", attributes cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      return false if @partner_service_name.nil?
      transport_type_validator = EnumAttributeValidator.new('String', ['L2_BRIDGE', 'L3_ROUTED'])
      return false unless transport_type_validator.valid?(@transport_type)
      deployment_mode_validator = EnumAttributeValidator.new('String', ['STAND_ALONE', 'ACTIVE_STANDBY'])
      return false unless deployment_mode_validator.valid?(@deployment_mode)
      return false if @primary_interface_mgmt_ip.nil?
      return false if @compute_id.nil?
      return false if @deployment_spec_name.nil?
      return false if @deployment_template_name.nil?
      return false if @storage_id.nil?
      return false if @attributes.nil?
      failure_policy_validator = EnumAttributeValidator.new('String', ['ALLOW', 'BLOCK'])
      return false unless failure_policy_validator.valid?(@failure_policy)
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
    # @param [Object] transport_type Object to be assigned
    def transport_type=(transport_type)
      validator = EnumAttributeValidator.new('String', ['L2_BRIDGE', 'L3_ROUTED'])
      unless validator.valid?(transport_type)
        fail ArgumentError, 'invalid value for "transport_type", must be one of #{validator.allowable_values}.'
      end
      @transport_type = transport_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deployment_mode Object to be assigned
    def deployment_mode=(deployment_mode)
      validator = EnumAttributeValidator.new('String', ['STAND_ALONE', 'ACTIVE_STANDBY'])
      unless validator.valid?(deployment_mode)
        fail ArgumentError, 'invalid value for "deployment_mode", must be one of #{validator.allowable_values}.'
      end
      @deployment_mode = deployment_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_policy Object to be assigned
    def failure_policy=(failure_policy)
      validator = EnumAttributeValidator.new('String', ['ALLOW', 'BLOCK'])
      unless validator.valid?(failure_policy)
        fail ArgumentError, 'invalid value for "failure_policy", must be one of #{validator.allowable_values}.'
      end
      @failure_policy = failure_policy
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
          path == o.path &&
          parent_path == o.parent_path &&
          unique_id == o.unique_id &&
          relative_path == o.relative_path &&
          children == o.children &&
          overridden == o.overridden &&
          marked_for_delete == o.marked_for_delete &&
          partner_service_name == o.partner_service_name &&
          transport_type == o.transport_type &&
          deployment_mode == o.deployment_mode &&
          primary_interface_mgmt_ip == o.primary_interface_mgmt_ip &&
          secondary_portgroup_id == o.secondary_portgroup_id &&
          context_id == o.context_id &&
          primary_portgroup_id == o.primary_portgroup_id &&
          secondary_interface_mgmt_ip == o.secondary_interface_mgmt_ip &&
          compute_id == o.compute_id &&
          deployment_spec_name == o.deployment_spec_name &&
          deployment_template_name == o.deployment_template_name &&
          secondary_gateway_address == o.secondary_gateway_address &&
          storage_id == o.storage_id &&
          secondary_subnet_mask == o.secondary_subnet_mask &&
          attributes == o.attributes &&
          primary_subnet_mask == o.primary_subnet_mask &&
          primary_gateway_address == o.primary_gateway_address &&
          primary_interface_network == o.primary_interface_network &&
          secondary_interface_network == o.secondary_interface_network &&
          failure_policy == o.failure_policy
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, path, parent_path, unique_id, relative_path, children, overridden, marked_for_delete, partner_service_name, transport_type, deployment_mode, primary_interface_mgmt_ip, secondary_portgroup_id, context_id, primary_portgroup_id, secondary_interface_mgmt_ip, compute_id, deployment_spec_name, deployment_template_name, secondary_gateway_address, storage_id, secondary_subnet_mask, attributes, primary_subnet_mask, primary_gateway_address, primary_interface_network, secondary_interface_network, failure_policy].hash
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
