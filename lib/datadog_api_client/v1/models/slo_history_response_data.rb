=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # An array of service level objective objects.
  class SLOHistoryResponseData
    # whether the object has unparsed attributes
    attr_accessor :_unparsed

    # The `from` timestamp in epoch seconds.
    attr_accessor :from_ts

    # For `metric` based SLOs where the query includes a group-by clause, this represents the list of grouping parameters.  This is not included in responses for `monitor` based SLOs.
    attr_accessor :group_by

    # For grouped SLOs, this represents SLI data for specific groups.  This is not included in the responses for `metric` based SLOs.
    attr_accessor :groups

    # For multi-monitor SLOs, this represents SLI data for specific monitors.  This is not included in the responses for `metric` based SLOs.
    attr_accessor :monitors

    attr_accessor :overall

    attr_accessor :series

    # mapping of string timeframe to the SLO threshold.
    attr_accessor :thresholds

    # The `to` timestamp in epoch seconds.
    attr_accessor :to_ts

    attr_accessor :type

    attr_accessor :type_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'from_ts' => :'from_ts',
        :'group_by' => :'group_by',
        :'groups' => :'groups',
        :'monitors' => :'monitors',
        :'overall' => :'overall',
        :'series' => :'series',
        :'thresholds' => :'thresholds',
        :'to_ts' => :'to_ts',
        :'type' => :'type',
        :'type_id' => :'type_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'from_ts' => :'Integer',
        :'group_by' => :'Array<String>',
        :'groups' => :'Array<SLOHistoryMonitor>',
        :'monitors' => :'Array<SLOHistoryMonitor>',
        :'overall' => :'SLOHistorySLIData',
        :'series' => :'SLOHistoryMetrics',
        :'thresholds' => :'Hash<String, SLOThreshold>',
        :'to_ts' => :'Integer',
        :'type' => :'SLOType',
        :'type_id' => :'SLOTypeNumeric'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOHistoryResponseData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SLOHistoryResponseData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'from_ts')
        self.from_ts = attributes[:'from_ts']
      end

      if attributes.key?(:'group_by')
        if (value = attributes[:'group_by']).is_a?(Array)
          self.group_by = value
        end
      end

      if attributes.key?(:'groups')
        if (value = attributes[:'groups']).is_a?(Array)
          self.groups = value
        end
      end

      if attributes.key?(:'monitors')
        if (value = attributes[:'monitors']).is_a?(Array)
          self.monitors = value
        end
      end

      if attributes.key?(:'overall')
        self.overall = attributes[:'overall']
      end

      if attributes.key?(:'series')
        self.series = attributes[:'series']
      end

      if attributes.key?(:'thresholds')
        if (value = attributes[:'thresholds']).is_a?(Hash)
          self.thresholds = value
        end
      end

      if attributes.key?(:'to_ts')
        self.to_ts = attributes[:'to_ts']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'type_id')
        self.type_id = attributes[:'type_id']
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
          from_ts == o.from_ts &&
          group_by == o.group_by &&
          groups == o.groups &&
          monitors == o.monitors &&
          overall == o.overall &&
          series == o.series &&
          thresholds == o.thresholds &&
          to_ts == o.to_ts &&
          type == o.type &&
          type_id == o.type_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [from_ts, group_by, groups, monitors, overall, series, thresholds, to_ts, type, type_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when :Array
        # generic array, return directly
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
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        res = klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        if res.instance_of? DatadogAPIClient::V1::UnparsedObject
          self._unparsed = true
        end
        res
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
