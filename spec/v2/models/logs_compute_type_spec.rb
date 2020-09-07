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
require 'date'

# Unit tests for DatadogAPIClient::V2::LogsComputeType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LogsComputeType' do
  before do
    # run before each test
    @instance = DatadogAPIClient::V2::LogsComputeType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LogsComputeType' do
    it 'should create an instance of LogsComputeType' do
      expect(@instance).to be_instance_of(DatadogAPIClient::V2::LogsComputeType)
    end
  end
end
