# DatadogAPIClient::V1::DashboardTemplateVariablePreset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the variable. | [optional] 
**template_variables** | [**Array&lt;DashboardTemplateVariablePresetValue&gt;**](DashboardTemplateVariablePresetValue.md) | List of variables. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::DashboardTemplateVariablePreset.new(name: null,
                                 template_variables: null)
```

