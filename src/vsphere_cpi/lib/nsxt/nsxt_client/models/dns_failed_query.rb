=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module NSXT
  # The summary of the failed DNS query. The query result represents a full query chain from client VM to dns forwarder, and upstream server if no forwarder cache was hit. 
  class DnsFailedQuery
    # The time the query took before it got a failed answer, in ms.
    attr_accessor :time_spent

    # The record type be queried, e.g. A, CNAME, SOA, etc.
    attr_accessor :record_type

    # The client host ip address from which the query was issued. 
    attr_accessor :client_ip

    # The upstream server ip address to which the query was forwarded. If the query could not be serviced from the DNS forwarder cache, this property will contain the IP address of the DNS server that serviced the request. If the request was serviced from the cache, this property will be absent. 
    attr_accessor :upstream_server_ip

    # The detailed error message of the failed query, if any.
    attr_accessor :error_message

    # The address be queried, can be a FQDN or an ip address.
    attr_accessor :address

    # Timestamp of the request, in YYYY-MM-DD HH:MM:SS.zzz format.
    attr_accessor :timestamp

    # The type of the query failure, e.g. NXDOMAIN, etc.
    attr_accessor :error_type

    # The source ip address that is used to forward a query to an upstream server. 
    attr_accessor :source_ip

    # The DNS forwarder ip address to which the query was first received. 
    attr_accessor :forwarder_ip

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'time_spent' => :'time_spent',
        :'record_type' => :'record_type',
        :'client_ip' => :'client_ip',
        :'upstream_server_ip' => :'upstream_server_ip',
        :'error_message' => :'error_message',
        :'address' => :'address',
        :'timestamp' => :'timestamp',
        :'error_type' => :'error_type',
        :'source_ip' => :'source_ip',
        :'forwarder_ip' => :'forwarder_ip'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'time_spent' => :'Integer',
        :'record_type' => :'String',
        :'client_ip' => :'String',
        :'upstream_server_ip' => :'String',
        :'error_message' => :'String',
        :'address' => :'String',
        :'timestamp' => :'String',
        :'error_type' => :'String',
        :'source_ip' => :'String',
        :'forwarder_ip' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'time_spent')
        self.time_spent = attributes[:'time_spent']
      end

      if attributes.has_key?(:'record_type')
        self.record_type = attributes[:'record_type']
      end

      if attributes.has_key?(:'client_ip')
        self.client_ip = attributes[:'client_ip']
      end

      if attributes.has_key?(:'upstream_server_ip')
        self.upstream_server_ip = attributes[:'upstream_server_ip']
      end

      if attributes.has_key?(:'error_message')
        self.error_message = attributes[:'error_message']
      end

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'error_type')
        self.error_type = attributes[:'error_type']
      end

      if attributes.has_key?(:'source_ip')
        self.source_ip = attributes[:'source_ip']
      end

      if attributes.has_key?(:'forwarder_ip')
        self.forwarder_ip = attributes[:'forwarder_ip']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @timestamp.nil?
        invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @timestamp.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          time_spent == o.time_spent &&
          record_type == o.record_type &&
          client_ip == o.client_ip &&
          upstream_server_ip == o.upstream_server_ip &&
          error_message == o.error_message &&
          address == o.address &&
          timestamp == o.timestamp &&
          error_type == o.error_type &&
          source_ip == o.source_ip &&
          forwarder_ip == o.forwarder_ip
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [time_spent, record_type, client_ip, upstream_server_ip, error_message, address, timestamp, error_type, source_ip, forwarder_ip].hash
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
