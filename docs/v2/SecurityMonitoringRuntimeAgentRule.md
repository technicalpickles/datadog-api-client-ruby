# DatadogAPIClient::V2::SecurityMonitoringRuntimeAgentRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_rule_id** | **String** | The Agent Rule ID, must be unique within the rule. | [optional] |
| **expression** | **String** | A Runtime Security expression determines what activity should be collected by the Datadog agent. These logical expressions can use predefined operators and attributes. Tags cannot be used in Runtime Security expressions (instead, allow/deny based on tags under the advanced option). | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringRuntimeAgentRule.new(
  agent_rule_id: etc_shadow,
  expression: null
)
```

