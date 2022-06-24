# OpenapiClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **attributes** | **Object** |  | [optional] |
| **settings** | **Object** |  | [optional] |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **organization_id** | **String** |  |  |
| **tenant_ids** | **Array&lt;String&gt;** |  |  |
| **environment_id** | **String** | if not None, the user belongs to a single environment | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::User.new(
  custom_id: null,
  email: null,
  first_name: null,
  last_name: null,
  attributes: null,
  settings: null,
  id: null,
  created_at: null,
  updated_at: null,
  organization_id: null,
  tenant_ids: null,
  environment_id: null
)
```

