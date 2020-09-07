=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'date'

module DatadogAPIClient::V2
  class SecurityMonitoringRuleMaxSignalDuration
    ZERO_MINUTES = 0.freeze
    ONE_MINUTE = 60.freeze
    FIVE_MINUTES = 300.freeze
    TEN_MINUTES = 600.freeze
    FIFTEEN_MINUTES = 900.freeze
    THIRTY_MINUTES = 1800.freeze
    ONE_HOUR = 3600.freeze
    TWO_HOURS = 7200.freeze
    THREE_HOURS = 10800.freeze
    SIX_HOURS = 21600.freeze
    TWELVE_HOURS = 43200.freeze
    ONE_DAY = 86400.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = SecurityMonitoringRuleMaxSignalDuration.constants.select { |c| SecurityMonitoringRuleMaxSignalDuration::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #SecurityMonitoringRuleMaxSignalDuration" if constantValues.empty?
      value
    end
  end
end
