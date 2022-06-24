# OpenapiClient::NewRole

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **attributes** | **Object** |  | [optional] |
| **settings** | **Object** |  | [optional] |
| **parameter_id** | **String** | if this is a resource role, the id of the resource | [optional] |
| **environment_id** | **String** | optionally scope role to environment | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NewRole.new(
  name: null,
  description: null,
  attributes: null,
  settings: null,
  parameter_id: null,
  environment_id: null
)
```

