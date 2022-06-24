# OpenapiClient::Role

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **attributes** | **Object** |  | [optional] |
| **settings** | **Object** |  | [optional] |
| **id** | **String** |  |  |
| **permissions** | [**Array&lt;Permission&gt;**](Permission.md) |  | [optional] |
| **is_built_in** | **Boolean** |  | [optional][default to false] |
| **environment_id** | **String** | if not None, the role belongs to a single environment | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Role.new(
  name: null,
  description: null,
  attributes: null,
  settings: null,
  id: null,
  permissions: null,
  is_built_in: null,
  environment_id: null
)
```

