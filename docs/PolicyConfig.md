# OpenapiClient::PolicyConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_roles** | [**Hash&lt;String, UserRoles&gt;**](UserRoles.md) |  |  |
| **role_permissions** | [**Hash&lt;String, RolePermissions&gt;**](RolePermissions.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PolicyConfig.new(
  user_roles: null,
  role_permissions: null
)
```

