# OpenapiClient::Resource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **attributes** | **Object** |  | [optional] |
| **name** | **String** |  |  |
| **path** | **String** |  |  |
| **id** | **String** |  |  |
| **actions** | [**Array&lt;Action&gt;**](Action.md) |  | [optional] |
| **is_built_in** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Resource.new(
  type: null,
  description: null,
  attributes: null,
  name: null,
  path: null,
  id: null,
  actions: null,
  is_built_in: null
)
```

