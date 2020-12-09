=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module NSXTPolicy
  class InterSitePortCounters
    # Number of no ARP packets dropped.
    attr_accessor :no_arp_dropped_packets

    # The total number of packets dropped.
    attr_accessor :dropped_packets

    # Number of packets dropped due to insufficient memory.
    attr_accessor :no_mem_dropped_packets

    # Number of IPSec policy error packets dropped.
    attr_accessor :ipsec_pol_err_dropped_packets

    # Number of packets dropped as no linked ports are present.
    attr_accessor :no_linked_dropped_packets

    # Number of DPDK kernal NIC interface packets dropped.
    attr_accessor :kni_dropped_packets

    # The total number of packets blocked.
    attr_accessor :blocked_packets

    # Number of reverse-path forwarding check packets dropped.
    attr_accessor :rpf_check_dropped_packets

    # Number of IPSec policy block packets dropped.
    attr_accessor :ipsec_pol_block_dropped_packets

    # Number of duplicate address detected packets dropped.
    attr_accessor :dad_dropped_packets

    # Number of packets dropped due to absence of receiver.
    attr_accessor :no_receiver_dropped_packets

    # Number of packets dropped due to unsupported L4 port.
    attr_accessor :l4port_unsupported_dropped_packets

    # Number of fragmentation needed packets dropped.
    attr_accessor :frag_needed_dropped_packets

    # Number of packtes dropped as destination is not supported.
    attr_accessor :destination_unsupported_dropped_packets

    # Number of firewall packets dropped.
    attr_accessor :firewall_dropped_packets

    # The number of no route packets dropped
    attr_accessor :no_route_dropped_packets

    # Number of packtes dropped as they are malformed.
    attr_accessor :malformed_dropped_packets

    # Number of non IP packets dropped.
    attr_accessor :non_ip_dropped_packets

    # Number of IPSec packets dropped
    attr_accessor :ipsec_dropped_packets

    # Number of redirect packets dropped.
    attr_accessor :redirect_dropped_packets

    # Number of service insert packets dropped.
    attr_accessor :service_insert_dropped_packets

    # Number of IPSec packets dropped as no VTI is present.
    attr_accessor :ipsec_no_vti_dropped_packets

    # The total number of packets transferred.
    attr_accessor :total_packets

    # Number of packets dropped as protocol is unsupported.
    attr_accessor :proto_unsupported_dropped_packets

    # Number of time to live exceeded packets dropped.
    attr_accessor :ttl_exceeded_dropped_packets

    # Number of IPV6 packets dropped.
    attr_accessor :ipv6_dropped_packets

    # Number of IPSec no security association packets dropped.
    attr_accessor :ipsec_no_sa_dropped_packets

    # The total number of bytes transferred.
    attr_accessor :total_bytes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'no_arp_dropped_packets' => :'no_arp_dropped_packets',
        :'dropped_packets' => :'dropped_packets',
        :'no_mem_dropped_packets' => :'no_mem_dropped_packets',
        :'ipsec_pol_err_dropped_packets' => :'ipsec_pol_err_dropped_packets',
        :'no_linked_dropped_packets' => :'no_linked_dropped_packets',
        :'kni_dropped_packets' => :'kni_dropped_packets',
        :'blocked_packets' => :'blocked_packets',
        :'rpf_check_dropped_packets' => :'rpf_check_dropped_packets',
        :'ipsec_pol_block_dropped_packets' => :'ipsec_pol_block_dropped_packets',
        :'dad_dropped_packets' => :'dad_dropped_packets',
        :'no_receiver_dropped_packets' => :'no_receiver_dropped_packets',
        :'l4port_unsupported_dropped_packets' => :'l4port_unsupported_dropped_packets',
        :'frag_needed_dropped_packets' => :'frag_needed_dropped_packets',
        :'destination_unsupported_dropped_packets' => :'destination_unsupported_dropped_packets',
        :'firewall_dropped_packets' => :'firewall_dropped_packets',
        :'no_route_dropped_packets' => :'no_route_dropped_packets',
        :'malformed_dropped_packets' => :'malformed_dropped_packets',
        :'non_ip_dropped_packets' => :'non_ip_dropped_packets',
        :'ipsec_dropped_packets' => :'ipsec_dropped_packets',
        :'redirect_dropped_packets' => :'redirect_dropped_packets',
        :'service_insert_dropped_packets' => :'service_insert_dropped_packets',
        :'ipsec_no_vti_dropped_packets' => :'ipsec_no_vti_dropped_packets',
        :'total_packets' => :'total_packets',
        :'proto_unsupported_dropped_packets' => :'proto_unsupported_dropped_packets',
        :'ttl_exceeded_dropped_packets' => :'ttl_exceeded_dropped_packets',
        :'ipv6_dropped_packets' => :'ipv6_dropped_packets',
        :'ipsec_no_sa_dropped_packets' => :'ipsec_no_sa_dropped_packets',
        :'total_bytes' => :'total_bytes'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'no_arp_dropped_packets' => :'Integer',
        :'dropped_packets' => :'Integer',
        :'no_mem_dropped_packets' => :'Integer',
        :'ipsec_pol_err_dropped_packets' => :'Integer',
        :'no_linked_dropped_packets' => :'Integer',
        :'kni_dropped_packets' => :'Integer',
        :'blocked_packets' => :'Integer',
        :'rpf_check_dropped_packets' => :'Integer',
        :'ipsec_pol_block_dropped_packets' => :'Integer',
        :'dad_dropped_packets' => :'Integer',
        :'no_receiver_dropped_packets' => :'Integer',
        :'l4port_unsupported_dropped_packets' => :'Integer',
        :'frag_needed_dropped_packets' => :'Integer',
        :'destination_unsupported_dropped_packets' => :'Integer',
        :'firewall_dropped_packets' => :'Integer',
        :'no_route_dropped_packets' => :'Integer',
        :'malformed_dropped_packets' => :'Integer',
        :'non_ip_dropped_packets' => :'Integer',
        :'ipsec_dropped_packets' => :'Integer',
        :'redirect_dropped_packets' => :'Integer',
        :'service_insert_dropped_packets' => :'Integer',
        :'ipsec_no_vti_dropped_packets' => :'Integer',
        :'total_packets' => :'Integer',
        :'proto_unsupported_dropped_packets' => :'Integer',
        :'ttl_exceeded_dropped_packets' => :'Integer',
        :'ipv6_dropped_packets' => :'Integer',
        :'ipsec_no_sa_dropped_packets' => :'Integer',
        :'total_bytes' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'no_arp_dropped_packets')
        self.no_arp_dropped_packets = attributes[:'no_arp_dropped_packets']
      end

      if attributes.has_key?(:'dropped_packets')
        self.dropped_packets = attributes[:'dropped_packets']
      end

      if attributes.has_key?(:'no_mem_dropped_packets')
        self.no_mem_dropped_packets = attributes[:'no_mem_dropped_packets']
      end

      if attributes.has_key?(:'ipsec_pol_err_dropped_packets')
        self.ipsec_pol_err_dropped_packets = attributes[:'ipsec_pol_err_dropped_packets']
      end

      if attributes.has_key?(:'no_linked_dropped_packets')
        self.no_linked_dropped_packets = attributes[:'no_linked_dropped_packets']
      end

      if attributes.has_key?(:'kni_dropped_packets')
        self.kni_dropped_packets = attributes[:'kni_dropped_packets']
      end

      if attributes.has_key?(:'blocked_packets')
        self.blocked_packets = attributes[:'blocked_packets']
      end

      if attributes.has_key?(:'rpf_check_dropped_packets')
        self.rpf_check_dropped_packets = attributes[:'rpf_check_dropped_packets']
      end

      if attributes.has_key?(:'ipsec_pol_block_dropped_packets')
        self.ipsec_pol_block_dropped_packets = attributes[:'ipsec_pol_block_dropped_packets']
      end

      if attributes.has_key?(:'dad_dropped_packets')
        self.dad_dropped_packets = attributes[:'dad_dropped_packets']
      end

      if attributes.has_key?(:'no_receiver_dropped_packets')
        self.no_receiver_dropped_packets = attributes[:'no_receiver_dropped_packets']
      end

      if attributes.has_key?(:'l4port_unsupported_dropped_packets')
        self.l4port_unsupported_dropped_packets = attributes[:'l4port_unsupported_dropped_packets']
      end

      if attributes.has_key?(:'frag_needed_dropped_packets')
        self.frag_needed_dropped_packets = attributes[:'frag_needed_dropped_packets']
      end

      if attributes.has_key?(:'destination_unsupported_dropped_packets')
        self.destination_unsupported_dropped_packets = attributes[:'destination_unsupported_dropped_packets']
      end

      if attributes.has_key?(:'firewall_dropped_packets')
        self.firewall_dropped_packets = attributes[:'firewall_dropped_packets']
      end

      if attributes.has_key?(:'no_route_dropped_packets')
        self.no_route_dropped_packets = attributes[:'no_route_dropped_packets']
      end

      if attributes.has_key?(:'malformed_dropped_packets')
        self.malformed_dropped_packets = attributes[:'malformed_dropped_packets']
      end

      if attributes.has_key?(:'non_ip_dropped_packets')
        self.non_ip_dropped_packets = attributes[:'non_ip_dropped_packets']
      end

      if attributes.has_key?(:'ipsec_dropped_packets')
        self.ipsec_dropped_packets = attributes[:'ipsec_dropped_packets']
      end

      if attributes.has_key?(:'redirect_dropped_packets')
        self.redirect_dropped_packets = attributes[:'redirect_dropped_packets']
      end

      if attributes.has_key?(:'service_insert_dropped_packets')
        self.service_insert_dropped_packets = attributes[:'service_insert_dropped_packets']
      end

      if attributes.has_key?(:'ipsec_no_vti_dropped_packets')
        self.ipsec_no_vti_dropped_packets = attributes[:'ipsec_no_vti_dropped_packets']
      end

      if attributes.has_key?(:'total_packets')
        self.total_packets = attributes[:'total_packets']
      end

      if attributes.has_key?(:'proto_unsupported_dropped_packets')
        self.proto_unsupported_dropped_packets = attributes[:'proto_unsupported_dropped_packets']
      end

      if attributes.has_key?(:'ttl_exceeded_dropped_packets')
        self.ttl_exceeded_dropped_packets = attributes[:'ttl_exceeded_dropped_packets']
      end

      if attributes.has_key?(:'ipv6_dropped_packets')
        self.ipv6_dropped_packets = attributes[:'ipv6_dropped_packets']
      end

      if attributes.has_key?(:'ipsec_no_sa_dropped_packets')
        self.ipsec_no_sa_dropped_packets = attributes[:'ipsec_no_sa_dropped_packets']
      end

      if attributes.has_key?(:'total_bytes')
        self.total_bytes = attributes[:'total_bytes']
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
          no_arp_dropped_packets == o.no_arp_dropped_packets &&
          dropped_packets == o.dropped_packets &&
          no_mem_dropped_packets == o.no_mem_dropped_packets &&
          ipsec_pol_err_dropped_packets == o.ipsec_pol_err_dropped_packets &&
          no_linked_dropped_packets == o.no_linked_dropped_packets &&
          kni_dropped_packets == o.kni_dropped_packets &&
          blocked_packets == o.blocked_packets &&
          rpf_check_dropped_packets == o.rpf_check_dropped_packets &&
          ipsec_pol_block_dropped_packets == o.ipsec_pol_block_dropped_packets &&
          dad_dropped_packets == o.dad_dropped_packets &&
          no_receiver_dropped_packets == o.no_receiver_dropped_packets &&
          l4port_unsupported_dropped_packets == o.l4port_unsupported_dropped_packets &&
          frag_needed_dropped_packets == o.frag_needed_dropped_packets &&
          destination_unsupported_dropped_packets == o.destination_unsupported_dropped_packets &&
          firewall_dropped_packets == o.firewall_dropped_packets &&
          no_route_dropped_packets == o.no_route_dropped_packets &&
          malformed_dropped_packets == o.malformed_dropped_packets &&
          non_ip_dropped_packets == o.non_ip_dropped_packets &&
          ipsec_dropped_packets == o.ipsec_dropped_packets &&
          redirect_dropped_packets == o.redirect_dropped_packets &&
          service_insert_dropped_packets == o.service_insert_dropped_packets &&
          ipsec_no_vti_dropped_packets == o.ipsec_no_vti_dropped_packets &&
          total_packets == o.total_packets &&
          proto_unsupported_dropped_packets == o.proto_unsupported_dropped_packets &&
          ttl_exceeded_dropped_packets == o.ttl_exceeded_dropped_packets &&
          ipv6_dropped_packets == o.ipv6_dropped_packets &&
          ipsec_no_sa_dropped_packets == o.ipsec_no_sa_dropped_packets &&
          total_bytes == o.total_bytes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [no_arp_dropped_packets, dropped_packets, no_mem_dropped_packets, ipsec_pol_err_dropped_packets, no_linked_dropped_packets, kni_dropped_packets, blocked_packets, rpf_check_dropped_packets, ipsec_pol_block_dropped_packets, dad_dropped_packets, no_receiver_dropped_packets, l4port_unsupported_dropped_packets, frag_needed_dropped_packets, destination_unsupported_dropped_packets, firewall_dropped_packets, no_route_dropped_packets, malformed_dropped_packets, non_ip_dropped_packets, ipsec_dropped_packets, redirect_dropped_packets, service_insert_dropped_packets, ipsec_no_vti_dropped_packets, total_packets, proto_unsupported_dropped_packets, ttl_exceeded_dropped_packets, ipv6_dropped_packets, ipsec_no_sa_dropped_packets, total_bytes].hash
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
