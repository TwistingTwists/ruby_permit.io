# OpenapiClient::RoleAssignmentsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**assign_role**](RoleAssignmentsApi.md#assign_role) | **POST** /v1/role_assignments | Assign Role |
| [**get_role_assignment**](RoleAssignmentsApi.md#get_role_assignment) | **GET** /v1/role_assignments/{role_assignment_id} | Get Role Assignment |
| [**list_role_assignments**](RoleAssignmentsApi.md#list_role_assignments) | **GET** /v1/role_assignments | List Role Assignments |
| [**remove_role_assignment**](RoleAssignmentsApi.md#remove_role_assignment) | **DELETE** /v1/role_assignments/{role_assignment_id} | Remove Role Assignment |
| [**unassign_role**](RoleAssignmentsApi.md#unassign_role) | **DELETE** /v1/role_assignments | Unassign Role |


## assign_role

> <RoleAssignment> assign_role(change_role_assignment, opts)

Assign Role

assign a role to a user in a given scope (read: tenant). All role assignments are scoped by a tenant id or by a resource id (i.e: resource roles).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::RoleAssignmentsApi.new
change_role_assignment = OpenapiClient::ChangeRoleAssignment.new({role: 'role_example', user: 'user_example', scope: 'scope_example'}) # ChangeRoleAssignment | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Assign Role
  result = api_instance.assign_role(change_role_assignment, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->assign_role: #{e}"
end
```

#### Using the assign_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignment>, Integer, Hash)> assign_role_with_http_info(change_role_assignment, opts)

```ruby
begin
  # Assign Role
  data, status_code, headers = api_instance.assign_role_with_http_info(change_role_assignment, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->assign_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_role_assignment** | [**ChangeRoleAssignment**](ChangeRoleAssignment.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**RoleAssignment**](RoleAssignment.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_role_assignment

> <RoleAssignment> get_role_assignment(role_assignment_id, opts)

Get Role Assignment

Retrieve a single role assignment by its id.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::RoleAssignmentsApi.new
role_assignment_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get Role Assignment
  result = api_instance.get_role_assignment(role_assignment_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->get_role_assignment: #{e}"
end
```

#### Using the get_role_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignment>, Integer, Hash)> get_role_assignment_with_http_info(role_assignment_id, opts)

```ruby
begin
  # Get Role Assignment
  data, status_code, headers = api_instance.get_role_assignment_with_http_info(role_assignment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->get_role_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_assignment_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**RoleAssignment**](RoleAssignment.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_role_assignments

> <RoleAssignmentList> list_role_assignments(opts)

List Role Assignments

Get the list of role assignments, optionally filtered by: - role: the role that was granted. - user: the user (i.e: actor) that was granted the role. - tenant: the tenant in which the role was granted in.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::RoleAssignmentsApi.new
opts = {
  skip: 56, # Integer | Skip first n results
  limit: 56, # Integer | Limit to n results
  role: 'role_example', # String | 
  user: 'user_example', # String | 
  tenant: 'tenant_example', # String | the tenant unique id (uuid)
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # List Role Assignments
  result = api_instance.list_role_assignments(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->list_role_assignments: #{e}"
end
```

#### Using the list_role_assignments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignmentList>, Integer, Hash)> list_role_assignments_with_http_info(opts)

```ruby
begin
  # List Role Assignments
  data, status_code, headers = api_instance.list_role_assignments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignmentList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->list_role_assignments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip** | **Integer** | Skip first n results | [optional][default to 0] |
| **limit** | **Integer** | Limit to n results | [optional] |
| **role** | **String** |  | [optional] |
| **user** | **String** |  | [optional] |
| **tenant** | **String** | the tenant unique id (uuid) | [optional] |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**RoleAssignmentList**](RoleAssignmentList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_role_assignment

> remove_role_assignment(role_assignment_id, opts)

Remove Role Assignment

Remove a single role assignment by its id.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::RoleAssignmentsApi.new
role_assignment_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Remove Role Assignment
  api_instance.remove_role_assignment(role_assignment_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->remove_role_assignment: #{e}"
end
```

#### Using the remove_role_assignment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_role_assignment_with_http_info(role_assignment_id, opts)

```ruby
begin
  # Remove Role Assignment
  data, status_code, headers = api_instance.remove_role_assignment_with_http_info(role_assignment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->remove_role_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_assignment_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unassign_role

> unassign_role(role, user, scope, opts)

Unassign Role

Unassign a role from a user in a given scope (read: tenant).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::RoleAssignmentsApi.new
role = 'role_example' # String | 
user = 'user_example' # String | 
scope = 'scope_example' # String | 
opts = {
  environment: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | filter only objects belonging to this environment
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Unassign Role
  api_instance.unassign_role(role, user, scope, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->unassign_role: #{e}"
end
```

#### Using the unassign_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unassign_role_with_http_info(role, user, scope, opts)

```ruby
begin
  # Unassign Role
  data, status_code, headers = api_instance.unassign_role_with_http_info(role, user, scope, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->unassign_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** |  |  |
| **user** | **String** |  |  |
| **scope** | **String** |  |  |
| **environment** | **String** | filter only objects belonging to this environment | [optional] |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

