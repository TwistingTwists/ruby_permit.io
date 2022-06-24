# OpenapiClient::ActionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_action**](ActionsApi.md#create_action) | **POST** /v1/resources/{resource_id}/actions | Create Action |
| [**delete_action**](ActionsApi.md#delete_action) | **DELETE** /v1/resources/{resource_id}/actions/{action_id} | Delete Action |
| [**get_action**](ActionsApi.md#get_action) | **GET** /v1/resources/{resource_id}/actions/{action_id} | Get Action |
| [**list_actions**](ActionsApi.md#list_actions) | **GET** /v1/resources/{resource_id}/actions | List Actions |
| [**sync_action**](ActionsApi.md#sync_action) | **PUT** /v1/resources/{resource_id}/actions | Sync Action |
| [**update_action**](ActionsApi.md#update_action) | **PATCH** /v1/resources/{resource_id}/actions/{action_id} | Update Action |


## create_action

> <Action> create_action(resource_id, new_action, opts)

Create Action

Add a new action to an existing resource.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ActionsApi.new
resource_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
new_action = OpenapiClient::NewAction.new({name: 'name_example'}) # NewAction | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Create Action
  result = api_instance.create_action(resource_id, new_action, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->create_action: #{e}"
end
```

#### Using the create_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Action>, Integer, Hash)> create_action_with_http_info(resource_id, new_action, opts)

```ruby
begin
  # Create Action
  data, status_code, headers = api_instance.create_action_with_http_info(resource_id, new_action, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Action>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->create_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  |  |
| **new_action** | [**NewAction**](NewAction.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Action**](Action.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_action

> delete_action(action_id, resource_id, opts)

Delete Action

Delete an existing action

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ActionsApi.new
action_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
resource_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Delete Action
  api_instance.delete_action(action_id, resource_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->delete_action: #{e}"
end
```

#### Using the delete_action_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_action_with_http_info(action_id, resource_id, opts)

```ruby
begin
  # Delete Action
  data, status_code, headers = api_instance.delete_action_with_http_info(action_id, resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->delete_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** |  |  |
| **resource_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_action

> <Action> get_action(action_id, resource_id, opts)

Get Action

Retrieve action details.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ActionsApi.new
action_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
resource_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get Action
  result = api_instance.get_action(action_id, resource_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->get_action: #{e}"
end
```

#### Using the get_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Action>, Integer, Hash)> get_action_with_http_info(action_id, resource_id, opts)

```ruby
begin
  # Get Action
  data, status_code, headers = api_instance.get_action_with_http_info(action_id, resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Action>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->get_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** |  |  |
| **resource_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Action**](Action.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_actions

> <ActionList> list_actions(resource_id, opts)

List Actions

Add a new action to an existing resource.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ActionsApi.new
resource_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # List Actions
  result = api_instance.list_actions(resource_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->list_actions: #{e}"
end
```

#### Using the list_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionList>, Integer, Hash)> list_actions_with_http_info(resource_id, opts)

```ruby
begin
  # List Actions
  data, status_code, headers = api_instance.list_actions_with_http_info(resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->list_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**ActionList**](ActionList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sync_action

> <Action> sync_action(resource_id, new_action, opts)

Sync Action

Create a resource action if it does not already exist.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ActionsApi.new
resource_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
new_action = OpenapiClient::NewAction.new({name: 'name_example'}) # NewAction | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Sync Action
  result = api_instance.sync_action(resource_id, new_action, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->sync_action: #{e}"
end
```

#### Using the sync_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Action>, Integer, Hash)> sync_action_with_http_info(resource_id, new_action, opts)

```ruby
begin
  # Sync Action
  data, status_code, headers = api_instance.sync_action_with_http_info(resource_id, new_action, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Action>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->sync_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  |  |
| **new_action** | [**NewAction**](NewAction.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Action**](Action.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_action

> <Action> update_action(action_id, resource_id, update_action, opts)

Update Action

Update the action data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ActionsApi.new
action_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
resource_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_action = OpenapiClient::UpdateAction.new # UpdateAction | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Update Action
  result = api_instance.update_action(action_id, resource_id, update_action, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->update_action: #{e}"
end
```

#### Using the update_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Action>, Integer, Hash)> update_action_with_http_info(action_id, resource_id, update_action, opts)

```ruby
begin
  # Update Action
  data, status_code, headers = api_instance.update_action_with_http_info(action_id, resource_id, update_action, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Action>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ActionsApi->update_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** |  |  |
| **resource_id** | **String** |  |  |
| **update_action** | [**UpdateAction**](UpdateAction.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Action**](Action.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

