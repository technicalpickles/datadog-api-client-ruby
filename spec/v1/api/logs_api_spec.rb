=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for DatadogAPIClient::V1::LogsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LogsApi' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V1::LogsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LogsApi' do
    it 'should create an instance of LogsApi' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V1::LogsApi)
    end
  end

  # unit tests for list_logs
  # Get a list of logs
  # List endpoint returns logs that match a log search query. [Results are paginated][1].  **If you are considering archiving logs for your organization, consider use of the Datadog archive capabilities instead of the log list API. See [Datadog Logs Archive documentation][2].**  [1]: /logs/guide/collect-multiple-logs-with-pagination [2]: https://docs.datadoghq.com/logs/archives
  # @param body Logs filter
  # @param [Hash] opts the optional parameters
  # @return [LogsListResponse]
  describe 'list_logs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
