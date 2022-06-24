# OpenapiClient::UsersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**assign_user_tenants**](UsersApi.md#assign_user_tenants) | **POST** /v1/users/{user_id}/tenants | Assign User Tenants |
| [**create_user**](UsersApi.md#create_user) | **POST** /v1/users | Create User |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /v1/users/{user_id} | Delete User |
| [**get_user**](UsersApi.md#get_user) | **GET** /v1/users/{user_id} | Get User |
| [**get_user_roles**](UsersApi.md#get_user_roles) | **GET** /v1/users/{user_id}/roles | Get User Roles |
| [**get_user_tenants**](UsersApi.md#get_user_tenants) | **GET** /v1/users/{user_id}/tenants | Get User Tenants |
| [**list_users**](UsersApi.md#list_users) | **GET** /v1/users | List Users |
| [**remove_user_tenants**](UsersApi.md#remove_user_tenants) | **DELETE** /v1/users/{user_id}/tenants | Remove User Tenants |
| [**sync_user**](UsersApi.md#sync_user) | **PUT** /v1/users | Sync User |
| [**update_user**](UsersApi.md#update_user) | **PATCH** /v1/users/{user_id} | Update User |


## assign_user_tenants

> <User> assign_user_tenants(user_id, tenant_selection, opts)

Assign User Tenants

Assign a user to one or more tenants in the user's organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | 
tenant_selection = OpenapiClient::TenantSelection.new({tenants: ['tenants_example']}) # TenantSelection | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Assign User Tenants
  result = api_instance.assign_user_tenants(user_id, tenant_selection, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->assign_user_tenants: #{e}"
end
```

#### Using the assign_user_tenants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> assign_user_tenants_with_http_info(user_id, tenant_selection, opts)

```ruby
begin
  # Assign User Tenants
  data, status_code, headers = api_instance.assign_user_tenants_with_http_info(user_id, tenant_selection, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->assign_user_tenants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **tenant_selection** | [**TenantSelection**](TenantSelection.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**User**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user

> <User> create_user(new_user, opts)

Create User

Create a new User in the Permit system. This user is associated with permissions data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
new_user = OpenapiClient::NewUser.new # NewUser | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Create User
  result = api_instance.create_user(new_user, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> create_user_with_http_info(new_user, opts)

```ruby
begin
  # Create User
  data, status_code, headers = api_instance.create_user_with_http_info(new_user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_user** | [**NewUser**](NewUser.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**User**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> delete_user(user_id, opts)

Delete User

Delete an existing User.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Delete User
  api_instance.delete_user(user_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(user_id, opts)

```ruby
begin
  # Delete User
  data, status_code, headers = api_instance.delete_user_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <User> get_user(user_id, opts)

Get User

Retrieve user details.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get User
  result = api_instance.get_user(user_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_user_with_http_info(user_id, opts)

```ruby
begin
  # Get User
  data, status_code, headers = api_instance.get_user_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**User**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_roles

> <RoleList> get_user_roles(user_id, opts)

Get User Roles

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | 
opts = {
  tenant: 'tenant_example', # String | the tenant unique id (uuid)
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get User Roles
  result = api_instance.get_user_roles(user_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_roles: #{e}"
end
```

#### Using the get_user_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleList>, Integer, Hash)> get_user_roles_with_http_info(user_id, opts)

```ruby
begin
  # Get User Roles
  data, status_code, headers = api_instance.get_user_roles_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **tenant** | **String** | the tenant unique id (uuid) | [optional] |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**RoleList**](RoleList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_tenants

> <TenantList> get_user_tenants(user_id, opts)

Get User Tenants

Get a list of tenants the user belongs to (i.e: assigned a role in).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get User Tenants
  result = api_instance.get_user_tenants(user_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_tenants: #{e}"
end
```

#### Using the get_user_tenants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantList>, Integer, Hash)> get_user_tenants_with_http_info(user_id, opts)

```ruby
begin
  # Get User Tenants
  data, status_code, headers = api_instance.get_user_tenants_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_tenants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**TenantList**](TenantList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <UserListWithRoles> list_users(opts)

List Users

Get a list of the users under the active environment or organization. If tenant is provided, the user must have an active role inside that tenant.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
opts = {
  search: 'search_example', # String | 
  skip: 56, # Integer | Skip first n results
  limit: 56, # Integer | Limit to n results
  tenant: 'tenant_example', # String | the tenant unique id (uuid)
  environment: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | filter only objects belonging to this environment
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # List Users
  result = api_instance.list_users(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserListWithRoles>, Integer, Hash)> list_users_with_http_info(opts)

```ruby
begin
  # List Users
  data, status_code, headers = api_instance.list_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserListWithRoles>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** |  | [optional] |
| **skip** | **Integer** | Skip first n results | [optional][default to 0] |
| **limit** | **Integer** | Limit to n results | [optional][default to 10] |
| **tenant** | **String** | the tenant unique id (uuid) | [optional] |
| **environment** | **String** | filter only objects belonging to this environment | [optional] |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**UserListWithRoles**](UserListWithRoles.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_user_tenants

> <User> remove_user_tenants(user_id, tenant_selection, opts)

Remove User Tenants

Remove a user from one or more tenants in the user's organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | 
tenant_selection = OpenapiClient::TenantSelection.new({tenants: ['tenants_example']}) # TenantSelection | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Remove User Tenants
  result = api_instance.remove_user_tenants(user_id, tenant_selection, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->remove_user_tenants: #{e}"
end
```

#### Using the remove_user_tenants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> remove_user_tenants_with_http_info(user_id, tenant_selection, opts)

```ruby
begin
  # Remove User Tenants
  data, status_code, headers = api_instance.remove_user_tenants_with_http_info(user_id, tenant_selection, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->remove_user_tenants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **tenant_selection** | [**TenantSelection**](TenantSelection.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**User**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sync_user

> <User> sync_user(new_remote_user, opts)

Sync User

Create a user if it does not already exist. Otherwise, update the user data.  NOTE: The roles field is used only when the user is created, and is ignored when updating an existing user. Consider it to be \"initial roles\".

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
new_remote_user = OpenapiClient::NewRemoteUser.new({key: 'key_example'}) # NewRemoteUser | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Sync User
  result = api_instance.sync_user(new_remote_user, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->sync_user: #{e}"
end
```

#### Using the sync_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> sync_user_with_http_info(new_remote_user, opts)

```ruby
begin
  # Sync User
  data, status_code, headers = api_instance.sync_user_with_http_info(new_remote_user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->sync_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_remote_user** | [**NewRemoteUser**](NewRemoteUser.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**User**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user

> <User> update_user(user_id, update_user, opts)

Update User

Update the user data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | 
update_user = OpenapiClient::UpdateUser.new # UpdateUser | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Update User
  result = api_instance.update_user(user_id, update_user, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> update_user_with_http_info(user_id, update_user, opts)

```ruby
begin
  # Update User
  data, status_code, headers = api_instance.update_user_with_http_info(user_id, update_user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **update_user** | [**UpdateUser**](UpdateUser.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**User**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

