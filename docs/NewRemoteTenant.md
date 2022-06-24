# OpenapiClient::NewRemoteTenant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **settings** | **Object** |  | [optional] |
| **environment_id** | **String** | optionally scope tenant to environment | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NewRemoteTenant.new(
  external_id: null,
  name: null,
  description: null,
  settings: null,
  environment_id: null
)
```

