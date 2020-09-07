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

# Unit tests for DatadogAPIClient::V1::LogsIndexesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LogsIndexesApi' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V1::LogsIndexesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LogsIndexesApi' do
    it 'should create an instance of LogsIndexesApi' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V1::LogsIndexesApi)
    end
  end

  # unit tests for get_logs_index
  # Get an index
  # Get one log index from your organization. This endpoint takes no JSON arguments.
  # @param name Name of the log index.
  # @param [Hash] opts the optional parameters
  # @return [LogsIndex]
  describe 'get_logs_index test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_logs_index_order
  # Get indexes order
  # Get the current order of your log indexes. This endpoint takes no JSON arguments.
  # @param [Hash] opts the optional parameters
  # @return [LogsIndexesOrder]
  describe 'get_logs_index_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_log_indexes
  # Get all indexes
  # The Index object describes the configuration of a log index. This endpoint returns an array of the &#x60;LogIndex&#x60; objects of your organization.
  # @param [Hash] opts the optional parameters
  # @return [LogsIndexListResponse]
  describe 'list_log_indexes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_logs_index
  # Update an index
  # Update an index as identified by its name. Returns the Index object passed in the request body when the request is successful.  Using the &#x60;PUT&#x60; method updates your index’s configuration by **replacing** your current configuration with the new one sent to your Datadog organization.
  # @param name Name of the log index.
  # @param [Hash] opts the optional parameters
  # @option opts [LogsIndex] :body Object containing the new &#x60;LogsIndex&#x60;.
  # @return [LogsIndex]
  describe 'update_logs_index test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_logs_index_order
  # Update indexes order
  # This endpoint updates the index order of your organization. It returns the index order object passed in the request body when the request is successful.
  # @param [Hash] opts the optional parameters
  # @option opts [LogsIndexesOrder] :body Object containing the new ordered list of index names
  # @return [LogsIndexesOrder]
  describe 'update_logs_index_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
