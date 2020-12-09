=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module NSXTPolicy
  # This object holds the information of the export task. 
  class ExportTask
    # Link to this resource
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # Current status of the task
    attr_accessor :status

    # True if response for asynchronous request is available
    attr_accessor :async_response_available

    # Description of the task
    attr_accessor :description

    # The start time of the task in epoch milliseconds
    attr_accessor :start_time

    # True if this task can be canceled
    attr_accessor :cancelable

    # HTTP request method
    attr_accessor :request_method

    # Name of the user who created this task
    attr_accessor :user

    # Task progress if known, from 0 to 100
    attr_accessor :progress

    # A message describing the disposition of the task
    attr_accessor :message

    # URI of the method invocation that spawned this task
    attr_accessor :request_uri

    # Identifier for this task
    attr_accessor :id

    # The end time of the task in epoch milliseconds
    attr_accessor :end_time

    # This property holds the reason of the task failure, if any. 
    attr_accessor :failure_msg

    # Policy path of a draft if this is an export task to export draft configuration. 
    attr_accessor :draft_path

    # Name of the exported file generated after completion of export task. 
    attr_accessor :exported_file

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
        :'status' => :'status',
        :'async_response_available' => :'async_response_available',
        :'description' => :'description',
        :'start_time' => :'start_time',
        :'cancelable' => :'cancelable',
        :'request_method' => :'request_method',
        :'user' => :'user',
        :'progress' => :'progress',
        :'message' => :'message',
        :'request_uri' => :'request_uri',
        :'id' => :'id',
        :'end_time' => :'end_time',
        :'failure_msg' => :'failure_msg',
        :'draft_path' => :'draft_path',
        :'exported_file' => :'exported_file'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'status' => :'String',
        :'async_response_available' => :'BOOLEAN',
        :'description' => :'String',
        :'start_time' => :'Integer',
        :'cancelable' => :'BOOLEAN',
        :'request_method' => :'String',
        :'user' => :'String',
        :'progress' => :'Integer',
        :'message' => :'String',
        :'request_uri' => :'String',
        :'id' => :'String',
        :'end_time' => :'Integer',
        :'failure_msg' => :'String',
        :'draft_path' => :'String',
        :'exported_file' => :'String'
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

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'async_response_available')
        self.async_response_available = attributes[:'async_response_available']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'start_time')
        self.start_time = attributes[:'start_time']
      end

      if attributes.has_key?(:'cancelable')
        self.cancelable = attributes[:'cancelable']
      end

      if attributes.has_key?(:'request_method')
        self.request_method = attributes[:'request_method']
      end

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.has_key?(:'progress')
        self.progress = attributes[:'progress']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'request_uri')
        self.request_uri = attributes[:'request_uri']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'end_time')
        self.end_time = attributes[:'end_time']
      end

      if attributes.has_key?(:'failure_msg')
        self.failure_msg = attributes[:'failure_msg']
      end

      if attributes.has_key?(:'draft_path')
        self.draft_path = attributes[:'draft_path']
      end

      if attributes.has_key?(:'exported_file')
        self.exported_file = attributes[:'exported_file']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@progress.nil? && @progress > 100
        invalid_properties.push('invalid value for "progress", must be smaller than or equal to 100.')
      end

      if !@progress.nil? && @progress < 0
        invalid_properties.push('invalid value for "progress", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('String', ['running', 'error', 'success', 'canceling', 'canceled', 'killed'])
      return false unless status_validator.valid?(@status)
      return false if !@progress.nil? && @progress > 100
      return false if !@progress.nil? && @progress < 0
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['running', 'error', 'success', 'canceling', 'canceled', 'killed'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] progress Value to be assigned
    def progress=(progress)
      if !progress.nil? && progress > 100
        fail ArgumentError, 'invalid value for "progress", must be smaller than or equal to 100.'
      end

      if !progress.nil? && progress < 0
        fail ArgumentError, 'invalid value for "progress", must be greater than or equal to 0.'
      end

      @progress = progress
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          status == o.status &&
          async_response_available == o.async_response_available &&
          description == o.description &&
          start_time == o.start_time &&
          cancelable == o.cancelable &&
          request_method == o.request_method &&
          user == o.user &&
          progress == o.progress &&
          message == o.message &&
          request_uri == o.request_uri &&
          id == o.id &&
          end_time == o.end_time &&
          failure_msg == o.failure_msg &&
          draft_path == o.draft_path &&
          exported_file == o.exported_file
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, status, async_response_available, description, start_time, cancelable, request_method, user, progress, message, request_uri, id, end_time, failure_msg, draft_path, exported_file].hash
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
