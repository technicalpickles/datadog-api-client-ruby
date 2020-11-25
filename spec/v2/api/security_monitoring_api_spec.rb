=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for DatadogAPIClient::V2::SecurityMonitoringApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SecurityMonitoringApi' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V2::SecurityMonitoringApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SecurityMonitoringApi' do
    it 'should create an instance of SecurityMonitoringApi' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V2::SecurityMonitoringApi)
    end
  end

  # unit tests for create_security_monitoring_rule
  # Create a detection rule
  # Create a detection rule.
  # @param [Hash] opts the optional parameters
  # @option opts [SecurityMonitoringRuleCreatePayload] :body 
  # @return [SecurityMonitoringRuleResponse]
  describe 'create_security_monitoring_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_security_monitoring_rule
  # Delete an existing rule
  # Delete an existing rule. Default rules cannot be deleted.
  # @param rule_id The ID of the rule.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_security_monitoring_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_security_monitoring_rule
  # Get a rule&#39;s details
  # Get a rule&#39;s details.
  # @param rule_id The ID of the rule.
  # @param [Hash] opts the optional parameters
  # @return [SecurityMonitoringRuleResponse]
  describe 'get_security_monitoring_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_security_monitoring_rules
  # List rules
  # List rules.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size Size for a given page.
  # @option opts [Integer] :page_number Specific page number to return.
  # @return [SecurityMonitoringListRulesResponse]
  describe 'list_security_monitoring_rules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_security_monitoring_signals
  # Get a quick list of security signals
  # The list endpoint returns security signals that match a search query. Both this endpoint and the POST endpoint can be used interchangeably when listing security signals.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_query The search query for security signals.
  # @option opts [Time] :filter_from The minimum timestamp for requested security signals.
  # @option opts [Time] :filter_to The maximum timestamp for requested security signals.
  # @option opts [SecurityMonitoringSignalsSort] :sort The order of the security signals in results.
  # @option opts [String] :page_cursor A list of results using the cursor provided in the previous query.
  # @option opts [Integer] :page_limit The maximum number of security signals in the response.
  # @return [SecurityMonitoringSignalsListResponse]
  describe 'list_security_monitoring_signals test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_security_monitoring_signals
  # Get a list of security signals
  # Returns security signals that match a search query. Both this endpoint and the GET endpoint can be used interchangeably for listing security signals.
  # @param [Hash] opts the optional parameters
  # @option opts [SecurityMonitoringSignalListRequest] :body 
  # @return [SecurityMonitoringSignalsListResponse]
  describe 'search_security_monitoring_signals test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_security_monitoring_rule
  # Update an existing rule
  # Update an existing rule. When updating &#x60;cases&#x60;, &#x60;queries&#x60; or &#x60;options&#x60;, the whole field must be included. For example, when modifying a query all queries must be included. Default rules can only be updated to be enabled and to change notifications.
  # @param rule_id The ID of the rule.
  # @param [Hash] opts the optional parameters
  # @option opts [SecurityMonitoringRuleUpdatePayload] :body 
  # @return [SecurityMonitoringRuleResponse]
  describe 'update_security_monitoring_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end