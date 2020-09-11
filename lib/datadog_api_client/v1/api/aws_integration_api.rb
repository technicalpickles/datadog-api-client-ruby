=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'cgi'

module DatadogAPIClient::V1
  class AWSIntegrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an AWS integration
    # Create a Datadog-Amazon Web Services integration. Using the `POST` method updates your integration configuration by adding your new configuration to the existing one in your Datadog organization. A unique AWS Account ID for role based authentication.
    # @param body [AWSAccount] AWS Request Object
    # @param [Hash] opts the optional parameters
    # @return [AWSAccountCreateResponse]
    def create_aws_account(body, opts = {})
      data, _status_code, _headers = create_aws_account_with_http_info(body, opts)
      data
    end

    # Create an AWS integration
    # Create a Datadog-Amazon Web Services integration. Using the &#x60;POST&#x60; method updates your integration configuration by adding your new configuration to the existing one in your Datadog organization. A unique AWS Account ID for role based authentication.
    # @param body [AWSAccount] AWS Request Object
    # @param [Hash] opts the optional parameters
    # @return [Array<(AWSAccountCreateResponse, Integer, Hash)>] AWSAccountCreateResponse data, response status code and response headers
    def create_aws_account_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationApi.create_aws_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationApi.create_aws_account"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'AWSAccountCreateResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AWSIntegrationApi#create_aws_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate a new external ID
    # Generate a new AWS external ID for a given AWS account ID and role name pair.
    # @param body [AWSAccount] Your Datadog role delegation name. For more information about your AWS account Role name, see the [Datadog AWS integration configuration info](https://github.com/DataDog/documentation/blob/master/integrations/amazon_web_services/#installation).
    # @param [Hash] opts the optional parameters
    # @return [AWSAccountCreateResponse]
    def create_new_aws_external_id(body, opts = {})
      data, _status_code, _headers = create_new_aws_external_id_with_http_info(body, opts)
      data
    end

    # Generate a new external ID
    # Generate a new AWS external ID for a given AWS account ID and role name pair.
    # @param body [AWSAccount] Your Datadog role delegation name. For more information about your AWS account Role name, see the [Datadog AWS integration configuration info](https://github.com/DataDog/documentation/blob/master/integrations/amazon_web_services/#installation).
    # @param [Hash] opts the optional parameters
    # @return [Array<(AWSAccountCreateResponse, Integer, Hash)>] AWSAccountCreateResponse data, response status code and response headers
    def create_new_aws_external_id_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationApi.create_new_aws_external_id ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationApi.create_new_aws_external_id"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws/generate_new_external_id'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'AWSAccountCreateResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AWSIntegrationApi#create_new_aws_external_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an AWS integration
    # Delete a Datadog-AWS integration matching the specified `account_id` and `role_name parameters`.
    # @param body [AWSAccount] AWS request object
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_aws_account(body, opts = {})
      data, _status_code, _headers = delete_aws_account_with_http_info(body, opts)
      data
    end

    # Delete an AWS integration
    # Delete a Datadog-AWS integration matching the specified &#x60;account_id&#x60; and &#x60;role_name parameters&#x60;.
    # @param body [AWSAccount] AWS request object
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_aws_account_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationApi.delete_aws_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationApi.delete_aws_account"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AWSIntegrationApi#delete_aws_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List namespace rules
    # List all namespace rules for a given Datadog-AWS integration. This endpoint takes no arguments.
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def list_available_aws_namespaces(opts = {})
      data, _status_code, _headers = list_available_aws_namespaces_with_http_info(opts)
      data
    end

    # List namespace rules
    # List all namespace rules for a given Datadog-AWS integration. This endpoint takes no arguments.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def list_available_aws_namespaces_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationApi.list_available_aws_namespaces ...'
      end
      # resource path
      local_var_path = '/api/v1/integration/aws/available_namespace_rules'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<String>' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AWSIntegrationApi#list_available_aws_namespaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all AWS integrations
    # List all Datadog-AWS integrations available in your Datadog organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id Only return AWS accounts that matches this &#x60;account_id&#x60;.
    # @option opts [String] :role_name Only return AWS accounts that matches this role_name.
    # @option opts [String] :access_key_id Only return AWS accounts that matches this &#x60;access_key_id&#x60;.
    # @return [AWSAccountListResponse]
    def list_aws_accounts(opts = {})
      data, _status_code, _headers = list_aws_accounts_with_http_info(opts)
      data
    end

    # List all AWS integrations
    # List all Datadog-AWS integrations available in your Datadog organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id Only return AWS accounts that matches this &#x60;account_id&#x60;.
    # @option opts [String] :role_name Only return AWS accounts that matches this role_name.
    # @option opts [String] :access_key_id Only return AWS accounts that matches this &#x60;access_key_id&#x60;.
    # @return [Array<(AWSAccountListResponse, Integer, Hash)>] AWSAccountListResponse data, response status code and response headers
    def list_aws_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationApi.list_aws_accounts ...'
      end
      # resource path
      local_var_path = '/api/v1/integration/aws'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'role_name'] = opts[:'role_name'] if !opts[:'role_name'].nil?
      query_params[:'access_key_id'] = opts[:'access_key_id'] if !opts[:'access_key_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AWSAccountListResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AWSIntegrationApi#list_aws_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an AWS integration
    # Update a Datadog-Amazon Web Services integration.
    # @param body [AWSAccount] AWS request object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id Only return AWS accounts that matches this &#x60;account_id&#x60;.
    # @option opts [String] :role_name Only return AWS accounts that match this &#x60;role_name&#x60;. Required if &#x60;account_id&#x60; is specified.
    # @option opts [String] :access_key_id Only return AWS accounts that matches this &#x60;access_key_id&#x60;. Required if none of the other two options are specified.
    # @return [Object]
    def update_aws_account(body, opts = {})
      data, _status_code, _headers = update_aws_account_with_http_info(body, opts)
      data
    end

    # Update an AWS integration
    # Update a Datadog-Amazon Web Services integration.
    # @param body [AWSAccount] AWS request object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id Only return AWS accounts that matches this &#x60;account_id&#x60;.
    # @option opts [String] :role_name Only return AWS accounts that match this &#x60;role_name&#x60;. Required if &#x60;account_id&#x60; is specified.
    # @option opts [String] :access_key_id Only return AWS accounts that matches this &#x60;access_key_id&#x60;. Required if none of the other two options are specified.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_aws_account_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationApi.update_aws_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationApi.update_aws_account"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'role_name'] = opts[:'role_name'] if !opts[:'role_name'].nil?
      query_params[:'access_key_id'] = opts[:'access_key_id'] if !opts[:'access_key_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AWSIntegrationApi#update_aws_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end