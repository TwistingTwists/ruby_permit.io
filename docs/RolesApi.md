# OpenapiClient::RolesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_role**](RolesApi.md#create_role) | **POST** /v1/roles | Create Role |
| [**delete_role**](RolesApi.md#delete_role) | **DELETE** /v1/roles/{role_id} | Delete Role |
| [**get_role**](RolesApi.md#get_role) | **GET** /v1/roles/{role_id} | Get Role |
| [**list_roles**](RolesApi.md#list_roles) | **GET** /v1/roles | List Roles |
| [**update_role**](RolesApi.md#update_role) | **PATCH** /v1/roles/{role_id} | Update Role |


## create_role

> <Role> create_role(new_role, opts)

Create Role

Create a new role under the active organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
new_role = OpenapiClient::NewRole.new({name: 'name_example'}) # NewRole | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Create Role
  result = api_instance.create_role(new_role, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->create_role: #{e}"
end
```

#### Using the create_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Role>, Integer, Hash)> create_role_with_http_info(new_role, opts)

```ruby
begin
  # Create Role
  data, status_code, headers = api_instance.create_role_with_http_info(new_role, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Role>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->create_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_role** | [**NewRole**](NewRole.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Role**](Role.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_role

> delete_role(role_id, opts)

Delete Role

Delete an existing role.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
role_id = 'role_id_example' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Delete Role
  api_instance.delete_role(role_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->delete_role: #{e}"
end
```

#### Using the delete_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_role_with_http_info(role_id, opts)

```ruby
begin
  # Delete Role
  data, status_code, headers = api_instance.delete_role_with_http_info(role_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->delete_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_role

> <Role> get_role(role_id, opts)

Get Role

Retrieve role details.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
role_id = 'role_id_example' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get Role
  result = api_instance.get_role(role_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->get_role: #{e}"
end
```

#### Using the get_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Role>, Integer, Hash)> get_role_with_http_info(role_id, opts)

```ruby
begin
  # Get Role
  data, status_code, headers = api_instance.get_role_with_http_info(role_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Role>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->get_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Role**](Role.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_roles

> <RoleList> list_roles(opts)

List Roles

Get the list of roles that were configured at either the organization (workspace) level or at the environment level.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
opts = {
  skip: 56, # Integer | Skip first n results
  limit: 56, # Integer | Limit to n results
  with_permissions: true, # Boolean | 
  tenant: 'tenant_example', # String | the tenant unique id (uuid)
  environment: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | filter only objects belonging to this environment
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # List Roles
  result = api_instance.list_roles(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->list_roles: #{e}"
end
```

#### Using the list_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleList>, Integer, Hash)> list_roles_with_http_info(opts)

```ruby
begin
  # List Roles
  data, status_code, headers = api_instance.list_roles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->list_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip** | **Integer** | Skip first n results | [optional][default to 0] |
| **limit** | **Integer** | Limit to n results | [optional] |
| **with_permissions** | **Boolean** |  | [optional][default to false] |
| **tenant** | **String** | the tenant unique id (uuid) | [optional] |
| **environment** | **String** | filter only objects belonging to this environment | [optional] |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**RoleList**](RoleList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_role

> <Role> update_role(role_id, update_role, opts)

Update Role

Update the role data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
role_id = 'role_id_example' # String | 
update_role = OpenapiClient::UpdateRole.new # UpdateRole | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Update Role
  result = api_instance.update_role(role_id, update_role, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->update_role: #{e}"
end
```

#### Using the update_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Role>, Integer, Hash)> update_role_with_http_info(role_id, update_role, opts)

```ruby
begin
  # Update Role
  data, status_code, headers = api_instance.update_role_with_http_info(role_id, update_role, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Role>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->update_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** |  |  |
| **update_role** | [**UpdateRole**](UpdateRole.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Role**](Role.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

