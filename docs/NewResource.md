# OpenapiClient::NewResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **attributes** | **Object** |  | [optional] |
| **name** | **String** |  |  |
| **path** | **String** |  |  |
| **actions** | [**Array&lt;NewAction&gt;**](NewAction.md) |  | [optional] |
| **environment_id** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NewResource.new(
  type: null,
  description: null,
  attributes: null,
  name: null,
  path: null,
  actions: null,
  environment_id: null
)
```

