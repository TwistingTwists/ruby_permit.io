# OpenapiClient::NewUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **attributes** | **Object** |  | [optional] |
| **settings** | **Object** |  | [optional] |
| **tenants** | **Array&lt;String&gt;** |  | [optional] |
| **environment_id** | **String** | optionally scope user to environment | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NewUser.new(
  custom_id: null,
  email: null,
  first_name: null,
  last_name: null,
  attributes: null,
  settings: null,
  tenants: null,
  environment_id: null
)
```

