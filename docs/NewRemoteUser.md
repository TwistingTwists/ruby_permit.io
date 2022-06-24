# OpenapiClient::NewRemoteUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **roles** | [**Array&lt;AssignedRole&gt;**](AssignedRole.md) |  | [optional] |
| **attributes** | **Object** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NewRemoteUser.new(
  key: null,
  first_name: null,
  last_name: null,
  email: null,
  roles: null,
  attributes: null
)
```

