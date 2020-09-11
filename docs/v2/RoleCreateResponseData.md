# DatadogAPIClient::V2::RoleCreateResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**RoleCreateAttributes**](RoleCreateAttributes.md) |  | [optional] 
**id** | **String** | ID of the role. | [optional] 
**relationships** | [**RoleResponseRelationships**](RoleResponseRelationships.md) |  | [optional] 
**type** | [**RolesType**](RolesType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::RoleCreateResponseData.new(attributes: null,
                                 id: null,
                                 relationships: null,
                                 type: null)
```

