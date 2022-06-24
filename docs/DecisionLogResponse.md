# OpenapiClient::DecisionLogResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **decision_id** | **String** |  |  |
| **timestamp** | **Time** |  |  |
| **path** | **String** |  | [optional] |
| **input** | **Object** |  | [optional] |
| **result** | [**DecisionLogResultResponse**](DecisionLogResultResponse.md) |  | [optional] |
| **id** | **String** |  |  |
| **pdp_id** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DecisionLogResponse.new(
  run_id: null,
  decision_id: null,
  timestamp: null,
  path: null,
  input: null,
  result: null,
  id: null,
  pdp_id: null
)
```

