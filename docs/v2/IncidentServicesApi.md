# DatadogAPIClient::V2::IncidentServicesApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_incident_service**](IncidentServicesApi.md#create_incident_service) | **POST** /api/v2/services | Create a new incident service
[**delete_incident_service**](IncidentServicesApi.md#delete_incident_service) | **DELETE** /api/v2/services/{service_id} | Delete an existing incident service
[**get_incident_service**](IncidentServicesApi.md#get_incident_service) | **GET** /api/v2/services/{service_id} | Get details of an incident service
[**get_incident_services**](IncidentServicesApi.md#get_incident_services) | **GET** /api/v2/services | Get a list of all incident services
[**update_incident_service**](IncidentServicesApi.md#update_incident_service) | **PATCH** /api/v2/services/{service_id} | Update an existing incident service



## create_incident_service

> IncidentServiceResponse create_incident_service(body)

Create a new incident service

Creates a new incident service.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::IncidentServicesApi.new
body = DatadogAPIClient::V2::IncidentServiceCreateRequest.new # IncidentServiceCreateRequest | Incident Service Payload.

begin
  #Create a new incident service
  result = api_instance.create_incident_service(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling IncidentServicesApi->create_incident_service: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IncidentServiceCreateRequest**](IncidentServiceCreateRequest.md)| Incident Service Payload. | 

### Return type

[**IncidentServiceResponse**](IncidentServiceResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_incident_service

> delete_incident_service(service_id)

Delete an existing incident service

Deletes an existing incident service.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::IncidentServicesApi.new
service_id = 'service_id_example' # String | The ID of the incident service.

begin
  #Delete an existing incident service
  api_instance.delete_incident_service(service_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling IncidentServicesApi->delete_incident_service: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| The ID of the incident service. | 

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident_service

> IncidentServiceResponse get_incident_service(service_id, opts)

Get details of an incident service

Get details of an incident service. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these incident services.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::IncidentServicesApi.new
service_id = 'service_id_example' # String | The ID of the incident service.
opts = {
  include: 'include_example' # String | Specifies which types of related objects should be included in the response.
}

begin
  #Get details of an incident service
  result = api_instance.get_incident_service(service_id, opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling IncidentServicesApi->get_incident_service: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| The ID of the incident service. | 
 **include** | **String**| Specifies which types of related objects should be included in the response. | [optional] 

### Return type

[**IncidentServiceResponse**](IncidentServiceResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident_services

> IncidentServicesResponse get_incident_services(opts)

Get a list of all incident services

Get all incident services uploaded for the requesting user's organization. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these incident services.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::IncidentServicesApi.new
opts = {
  include: 'include_example', # String | Specifies which types of related objects should be included in the response.
  page_size: 10, # Integer | Size for a given page.
  page_offset: 0 # Integer | Specific offset to use as the beginning of the returned page.
}

begin
  #Get a list of all incident services
  result = api_instance.get_incident_services(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling IncidentServicesApi->get_incident_services: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Specifies which types of related objects should be included in the response. | [optional] 
 **page_size** | **Integer**| Size for a given page. | [optional] [default to 10]
 **page_offset** | **Integer**| Specific offset to use as the beginning of the returned page. | [optional] [default to 0]

### Return type

[**IncidentServicesResponse**](IncidentServicesResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_incident_service

> IncidentServiceResponse update_incident_service(service_id, body)

Update an existing incident service

Updates an existing incident service. Only provide the attributes which should be updated as this request is a partial update.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::IncidentServicesApi.new
service_id = 'service_id_example' # String | The ID of the incident service.
body = DatadogAPIClient::V2::IncidentServiceUpdateRequest.new # IncidentServiceUpdateRequest | Incident Service Payload.

begin
  #Update an existing incident service
  result = api_instance.update_incident_service(service_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling IncidentServicesApi->update_incident_service: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| The ID of the incident service. | 
 **body** | [**IncidentServiceUpdateRequest**](IncidentServiceUpdateRequest.md)| Incident Service Payload. | 

### Return type

[**IncidentServiceResponse**](IncidentServiceResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
