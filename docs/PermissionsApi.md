# OpenapiClient::PermissionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**assign_permissions_to_role**](PermissionsApi.md#assign_permissions_to_role) | **POST** /v1/roles/{role_id}/permissions | Assign Permissions To Role |
| [**list_role_permissions**](PermissionsApi.md#list_role_permissions) | **GET** /v1/roles/{role_id}/permissions | List Role Permissions |
| [**remove_permissions_from_role**](PermissionsApi.md#remove_permissions_from_role) | **DELETE** /v1/roles/{role_id}/permissions | Remove Permissions From Role |


## assign_permissions_to_role

> assign_permissions_to_role(role_id, permission_selection, opts)

Assign Permissions To Role

Assign permissions to a given role.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PermissionsApi.new
role_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
permission_selection = OpenapiClient::PermissionSelection.new({permissions: [OpenapiClient::PermissionIdentifier.new({action_id: 'action_id_example'})]}) # PermissionSelection | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Assign Permissions To Role
  api_instance.assign_permissions_to_role(role_id, permission_selection, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PermissionsApi->assign_permissions_to_role: #{e}"
end
```

#### Using the assign_permissions_to_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> assign_permissions_to_role_with_http_info(role_id, permission_selection, opts)

```ruby
begin
  # Assign Permissions To Role
  data, status_code, headers = api_instance.assign_permissions_to_role_with_http_info(role_id, permission_selection, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PermissionsApi->assign_permissions_to_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** |  |  |
| **permission_selection** | [**PermissionSelection**](PermissionSelection.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_role_permissions

> <PermissionList> list_role_permissions(role_id, opts)

List Role Permissions

Get a list of permissions assigned to a given role.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PermissionsApi.new
role_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  skip: 56, # Integer | Skip first n results
  limit: 56, # Integer | Limit to n results
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # List Role Permissions
  result = api_instance.list_role_permissions(role_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PermissionsApi->list_role_permissions: #{e}"
end
```

#### Using the list_role_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionList>, Integer, Hash)> list_role_permissions_with_http_info(role_id, opts)

```ruby
begin
  # List Role Permissions
  data, status_code, headers = api_instance.list_role_permissions_with_http_info(role_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PermissionsApi->list_role_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** |  |  |
| **skip** | **Integer** | Skip first n results | [optional][default to 0] |
| **limit** | **Integer** | Limit to n results | [optional] |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**PermissionList**](PermissionList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_permissions_from_role

> remove_permissions_from_role(role_id, permission_selection, opts)

Remove Permissions From Role

Remove permissions from a given role.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PermissionsApi.new
role_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
permission_selection = OpenapiClient::PermissionSelection.new({permissions: [OpenapiClient::PermissionIdentifier.new({action_id: 'action_id_example'})]}) # PermissionSelection | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Remove Permissions From Role
  api_instance.remove_permissions_from_role(role_id, permission_selection, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PermissionsApi->remove_permissions_from_role: #{e}"
end
```

#### Using the remove_permissions_from_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_permissions_from_role_with_http_info(role_id, permission_selection, opts)

```ruby
begin
  # Remove Permissions From Role
  data, status_code, headers = api_instance.remove_permissions_from_role_with_http_info(role_id, permission_selection, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PermissionsApi->remove_permissions_from_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** |  |  |
| **permission_selection** | [**PermissionSelection**](PermissionSelection.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

