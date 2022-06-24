# OpenapiClient::NewOrganization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | The domain name prefix you choose here will be used for the API endpoints of your organization. |  |
| **name** | **String** |  |  |
| **settings** | **Object** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NewOrganization.new(
  slug: null,
  name: null,
  settings: null
)
```

