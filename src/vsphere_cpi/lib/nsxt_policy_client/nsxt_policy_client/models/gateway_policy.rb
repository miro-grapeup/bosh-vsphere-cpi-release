=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module NSXT
  # Contains ordered list of Rules for GatewayPolicy
  class GatewayPolicy
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

    # - Distributed Firewall - Policy framework provides five pre-defined categories for classifying a security policy. They are \"Ethernet\",\"Emergency\", \"Infrastructure\" \"Environment\" and \"Application\". There is a pre-determined order in which the policy framework manages the priority of these security policies. Ethernet category is for supporting layer 2 firewall rules. The other four categories are applicable for layer 3 rules. Amongst them, the Emergency category has the highest priority followed by Infrastructure, Environment and then Application rules. Administrator can choose to categorize a security policy into the above categories or can choose to leave it empty. If empty it will have the least precedence w.r.t the above four categories. - Edge Firewall - Policy Framework for Edge Firewall provides six pre-defined categories \"Emergency\", \"SystemRules\", \"SharedPreRules\", \"LocalGatewayRules\", \"AutoServiceRules\" and \"Default\", in order of priority of rules. All categories are allowed for Gatetway Policies that belong to 'default' Domain. However, for user created domains, category is restricted to \"SharedPreRules\" or \"LocalGatewayRules\" only. Also, the users can add/modify/delete rules from only the \"SharedPreRules\" and \"LocalGatewayRules\" categories. If user doesn't specify the category then defaulted to \"Rules\". System generated category is used by NSX created rules, for example BFD rules. Autoplumbed category used by NSX verticals to autoplumb data path rules. Finally, \"Default\" category is the placeholder default rules with lowest in the order of priority. 
    attr_accessor :category

    # A flag to indicate whether policy is a default policy.
    attr_accessor :is_default

    # Indicates whether a security policy should be locked. If the security policy is locked by a user, then no other user would be able to modify this security policy. Once the user releases the lock, other users can update this security policy. 
    attr_accessor :locked

    # ID of the user who last modified the lock for the secruity policy. 
    attr_accessor :lock_modified_by

    # SecurityPolicy locked/unlocked time in epoch milliseconds.
    attr_accessor :lock_modified_time

    # The count of rules in the policy. 
    attr_accessor :rule_count

    # Comments for security policy lock/unlock.
    attr_accessor :comments

    # This field is to indicate the internal sequence number of a policy with respect to the policies across categories. 
    attr_accessor :internal_sequence_number

    # Stateful or Stateless nature of security policy is enforced on all rules in this security policy. When it is stateful, the state of the network connects are tracked and a stateful packet inspection is performed. Layer3 security policies can be stateful or stateless. By default, they are stateful. Layer2 security policies can only be stateless. 
    attr_accessor :stateful

    # Provides a mechanism to apply the rules in this policy for a specified time duration. 
    attr_accessor :scheduler_path

    # Ensures that a 3 way TCP handshake is done before the data packets are sent. tcp_strict=true is supported only for stateful security policies. If the tcp_strict flag is not specified and the security policy is stateful, then tcp_strict will be set to true. 
    attr_accessor :tcp_strict

    # The list of group paths where the rules in this policy will get applied. This scope will take precedence over rule level scope. Supported only for security and redirection policies. In case of RedirectionPolicy, it is expected only when the policy is NS and redirecting to service chain. 
    attr_accessor :scope

    # This field is used to resolve conflicts between security policies across domains. In order to change the sequence number of a policy one can fire a POST request on the policy entity with a query parameter action=revise The sequence number field will reflect the value of the computed sequence number upon execution of the above mentioned POST request. For scenarios where the administrator is using a template to update several security policies, the only way to set the sequence number is to explicitly specify the sequence number for each security policy. If no sequence number is specified in the payload, a value of 0 is assigned by default. If there are multiple policies with the same sequence number then their order is not deterministic. If a specific order of policies is desired, then one has to specify unique sequence numbers or use the POST request on the policy entity with a query parameter action=revise to let the framework assign a sequence number 
    attr_accessor :sequence_number

    # Rules that are a part of this SecurityPolicy
    attr_accessor :rules

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
        :'category' => :'category',
        :'is_default' => :'is_default',
        :'locked' => :'locked',
        :'lock_modified_by' => :'lock_modified_by',
        :'lock_modified_time' => :'lock_modified_time',
        :'rule_count' => :'rule_count',
        :'comments' => :'comments',
        :'internal_sequence_number' => :'internal_sequence_number',
        :'stateful' => :'stateful',
        :'scheduler_path' => :'scheduler_path',
        :'tcp_strict' => :'tcp_strict',
        :'scope' => :'scope',
        :'sequence_number' => :'sequence_number',
        :'rules' => :'rules'
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
        :'category' => :'String',
        :'is_default' => :'BOOLEAN',
        :'locked' => :'BOOLEAN',
        :'lock_modified_by' => :'String',
        :'lock_modified_time' => :'Integer',
        :'rule_count' => :'Integer',
        :'comments' => :'String',
        :'internal_sequence_number' => :'Integer',
        :'stateful' => :'BOOLEAN',
        :'scheduler_path' => :'String',
        :'tcp_strict' => :'BOOLEAN',
        :'scope' => :'Array<String>',
        :'sequence_number' => :'Integer',
        :'rules' => :'Array<Rule>'
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

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'is_default')
        self.is_default = attributes[:'is_default']
      end

      if attributes.has_key?(:'locked')
        self.locked = attributes[:'locked']
      else
        self.locked = false
      end

      if attributes.has_key?(:'lock_modified_by')
        self.lock_modified_by = attributes[:'lock_modified_by']
      end

      if attributes.has_key?(:'lock_modified_time')
        self.lock_modified_time = attributes[:'lock_modified_time']
      end

      if attributes.has_key?(:'rule_count')
        self.rule_count = attributes[:'rule_count']
      end

      if attributes.has_key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.has_key?(:'internal_sequence_number')
        self.internal_sequence_number = attributes[:'internal_sequence_number']
      end

      if attributes.has_key?(:'stateful')
        self.stateful = attributes[:'stateful']
      end

      if attributes.has_key?(:'scheduler_path')
        self.scheduler_path = attributes[:'scheduler_path']
      end

      if attributes.has_key?(:'tcp_strict')
        self.tcp_strict = attributes[:'tcp_strict']
      end

      if attributes.has_key?(:'scope')
        if (value = attributes[:'scope']).is_a?(Array)
          self.scope = value
        end
      end

      if attributes.has_key?(:'sequence_number')
        self.sequence_number = attributes[:'sequence_number']
      end

      if attributes.has_key?(:'rules')
        if (value = attributes[:'rules']).is_a?(Array)
          self.rules = value
        end
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

      if !@sequence_number.nil? && @sequence_number < 0
        invalid_properties.push('invalid value for "sequence_number", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      return false if !@sequence_number.nil? && @sequence_number < 0
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

    # Custom attribute writer method with validation
    # @param [Object] sequence_number Value to be assigned
    def sequence_number=(sequence_number)
      if !sequence_number.nil? && sequence_number < 0
        fail ArgumentError, 'invalid value for "sequence_number", must be greater than or equal to 0.'
      end

      @sequence_number = sequence_number
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
          category == o.category &&
          is_default == o.is_default &&
          locked == o.locked &&
          lock_modified_by == o.lock_modified_by &&
          lock_modified_time == o.lock_modified_time &&
          rule_count == o.rule_count &&
          comments == o.comments &&
          internal_sequence_number == o.internal_sequence_number &&
          stateful == o.stateful &&
          scheduler_path == o.scheduler_path &&
          tcp_strict == o.tcp_strict &&
          scope == o.scope &&
          sequence_number == o.sequence_number &&
          rules == o.rules
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, path, parent_path, unique_id, relative_path, children, overridden, marked_for_delete, category, is_default, locked, lock_modified_by, lock_modified_time, rule_count, comments, internal_sequence_number, stateful, scheduler_path, tcp_strict, scope, sequence_number, rules].hash
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
