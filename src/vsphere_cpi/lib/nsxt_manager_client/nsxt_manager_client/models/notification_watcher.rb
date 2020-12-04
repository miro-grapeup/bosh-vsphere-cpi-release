=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module NSXT
  class NotificationWatcher
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

    # Optional description that can be associated with this NotificationWatcher.
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

    # System generated identifier to identify a notification watcher uniquely. 
    attr_accessor :id

    # The type of this resource.
    attr_accessor :resource_type

    # Optional time duration (in seconds) to specify request timeout to notification watcher. If the send reaches the timeout, will try to send refresh_needed as true in the next time interval. The default value is 30 seconds.
    attr_accessor :send_timeout

    # URI notification requests should be made on the specified server.
    attr_accessor :uri

    # Contains the hex-encoded SHA256 thumbprint of the HTTPS certificate. It must be specified if use_https is set to true.
    attr_accessor :certificate_sha256_thumbprint

    # Type of method notification requests should be made on the specified server. The value must be set to POST.
    attr_accessor :method

    # Optional time interval (in seconds) for which notification URIs will be accumulated. At the end of the time interval the accumulated notification URIs will be sent to this NotificationWatcher in the form of zero (nothing accumulated) or more notification requests as soon as possible. If it is not specified, the NotificationWatcher should expected to receive notifications at any time.
    attr_accessor :send_interval

    # If the number of notification URIs accumulated in specified send_interval exceeds max_send_uri_count, then multiple notification requests (each with max_send_uri_count or less number of notification URIs) will be sent to this NotificationWatcher. The default value is 5000.
    attr_accessor :max_send_uri_count

    # A NotificationAuthenticationScheme that describes how notification requests should authenticate to the server.
    attr_accessor :authentication_scheme

    # IP address or fully qualified domain name of the partner/customer watcher.
    attr_accessor :server

    # Optional integer port value to specify a non-standard HTTP or HTTPS port.
    attr_accessor :port

    # Optional field, when set to true indicates REST API server should use HTTPS.
    attr_accessor :use_https

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
        :'send_timeout' => :'send_timeout',
        :'uri' => :'uri',
        :'certificate_sha256_thumbprint' => :'certificate_sha256_thumbprint',
        :'method' => :'method',
        :'send_interval' => :'send_interval',
        :'max_send_uri_count' => :'max_send_uri_count',
        :'authentication_scheme' => :'authentication_scheme',
        :'server' => :'server',
        :'port' => :'port',
        :'use_https' => :'use_https'
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
        :'send_timeout' => :'Integer',
        :'uri' => :'String',
        :'certificate_sha256_thumbprint' => :'String',
        :'method' => :'String',
        :'send_interval' => :'Integer',
        :'max_send_uri_count' => :'Integer',
        :'authentication_scheme' => :'NotificationAuthenticationScheme',
        :'server' => :'String',
        :'port' => :'Integer',
        :'use_https' => :'BOOLEAN'
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

      if attributes.has_key?(:'send_timeout')
        self.send_timeout = attributes[:'send_timeout']
      else
        self.send_timeout = 30
      end

      if attributes.has_key?(:'uri')
        self.uri = attributes[:'uri']
      end

      if attributes.has_key?(:'certificate_sha256_thumbprint')
        self.certificate_sha256_thumbprint = attributes[:'certificate_sha256_thumbprint']
      end

      if attributes.has_key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.has_key?(:'send_interval')
        self.send_interval = attributes[:'send_interval']
      end

      if attributes.has_key?(:'max_send_uri_count')
        self.max_send_uri_count = attributes[:'max_send_uri_count']
      else
        self.max_send_uri_count = 5000
      end

      if attributes.has_key?(:'authentication_scheme')
        self.authentication_scheme = attributes[:'authentication_scheme']
      end

      if attributes.has_key?(:'server')
        self.server = attributes[:'server']
      end

      if attributes.has_key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.has_key?(:'use_https')
        self.use_https = attributes[:'use_https']
      else
        self.use_https = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@display_name.nil? && @display_name.to_s.length > 255
        invalid_properties.push('invalid value for "display_name", the character length must be smaller than or equal to 255.')
      end

      if !@send_timeout.nil? && @send_timeout < 1
        invalid_properties.push('invalid value for "send_timeout", must be greater than or equal to 1.')
      end

      if @uri.nil?
        invalid_properties.push('invalid value for "uri", uri cannot be nil.')
      end

      if @method.nil?
        invalid_properties.push('invalid value for "method", method cannot be nil.')
      end

      if !@send_interval.nil? && @send_interval < 30
        invalid_properties.push('invalid value for "send_interval", must be greater than or equal to 30.')
      end

      if !@max_send_uri_count.nil? && @max_send_uri_count > 5000
        invalid_properties.push('invalid value for "max_send_uri_count", must be smaller than or equal to 5000.')
      end

      if !@max_send_uri_count.nil? && @max_send_uri_count < 1
        invalid_properties.push('invalid value for "max_send_uri_count", must be greater than or equal to 1.')
      end

      if @authentication_scheme.nil?
        invalid_properties.push('invalid value for "authentication_scheme", authentication_scheme cannot be nil.')
      end

      if @server.nil?
        invalid_properties.push('invalid value for "server", server cannot be nil.')
      end

      if !@port.nil? && @port > 65535
        invalid_properties.push('invalid value for "port", must be smaller than or equal to 65535.')
      end

      if !@port.nil? && @port < 0
        invalid_properties.push('invalid value for "port", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@send_timeout.nil? && @send_timeout < 1
      return false if @uri.nil?
      return false if @method.nil?
      method_validator = EnumAttributeValidator.new('String', ['POST'])
      return false unless method_validator.valid?(@method)
      return false if !@send_interval.nil? && @send_interval < 30
      return false if !@max_send_uri_count.nil? && @max_send_uri_count > 5000
      return false if !@max_send_uri_count.nil? && @max_send_uri_count < 1
      return false if @authentication_scheme.nil?
      return false if @server.nil?
      return false if !@port.nil? && @port > 65535
      return false if !@port.nil? && @port < 0
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
    # @param [Object] send_timeout Value to be assigned
    def send_timeout=(send_timeout)
      if !send_timeout.nil? && send_timeout < 1
        fail ArgumentError, 'invalid value for "send_timeout", must be greater than or equal to 1.'
      end

      @send_timeout = send_timeout
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] method Object to be assigned
    def method=(method)
      validator = EnumAttributeValidator.new('String', ['POST'])
      unless validator.valid?(method)
        fail ArgumentError, 'invalid value for "method", must be one of #{validator.allowable_values}.'
      end
      @method = method
    end

    # Custom attribute writer method with validation
    # @param [Object] send_interval Value to be assigned
    def send_interval=(send_interval)
      if !send_interval.nil? && send_interval < 30
        fail ArgumentError, 'invalid value for "send_interval", must be greater than or equal to 30.'
      end

      @send_interval = send_interval
    end

    # Custom attribute writer method with validation
    # @param [Object] max_send_uri_count Value to be assigned
    def max_send_uri_count=(max_send_uri_count)
      if !max_send_uri_count.nil? && max_send_uri_count > 5000
        fail ArgumentError, 'invalid value for "max_send_uri_count", must be smaller than or equal to 5000.'
      end

      if !max_send_uri_count.nil? && max_send_uri_count < 1
        fail ArgumentError, 'invalid value for "max_send_uri_count", must be greater than or equal to 1.'
      end

      @max_send_uri_count = max_send_uri_count
    end

    # Custom attribute writer method with validation
    # @param [Object] port Value to be assigned
    def port=(port)
      if !port.nil? && port > 65535
        fail ArgumentError, 'invalid value for "port", must be smaller than or equal to 65535.'
      end

      if !port.nil? && port < 0
        fail ArgumentError, 'invalid value for "port", must be greater than or equal to 0.'
      end

      @port = port
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
          send_timeout == o.send_timeout &&
          uri == o.uri &&
          certificate_sha256_thumbprint == o.certificate_sha256_thumbprint &&
          method == o.method &&
          send_interval == o.send_interval &&
          max_send_uri_count == o.max_send_uri_count &&
          authentication_scheme == o.authentication_scheme &&
          server == o.server &&
          port == o.port &&
          use_https == o.use_https
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, send_timeout, uri, certificate_sha256_thumbprint, method, send_interval, max_send_uri_count, authentication_scheme, server, port, use_https].hash
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
