# OpenapiClient::Tenant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **settings** | **Object** |  | [optional] |
| **id** | **String** |  |  |
| **created** | **Time** |  |  |
| **organization_id** | **String** |  |  |
| **environment_id** | **String** | if not None, the tenant belongs to a single environment | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Tenant.new(
  external_id: null,
  name: null,
  description: null,
  settings: null,
  id: null,
  created: null,
  organization_id: null,
  environment_id: null
)
```

