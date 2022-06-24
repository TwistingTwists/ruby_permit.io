# OpenapiClient::EnvironmentsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_environment**](EnvironmentsApi.md#create_environment) | **POST** /v1/projects/{project_id}/environments | Create Environment |
| [**delete_environment**](EnvironmentsApi.md#delete_environment) | **DELETE** /v1/projects/{project_id}/environments/{environment_id} | Delete Environment |
| [**get_environment**](EnvironmentsApi.md#get_environment) | **GET** /v1/projects/{project_id}/environments/{environment_id} | Get Environment |
| [**list_environments**](EnvironmentsApi.md#list_environments) | **GET** /v1/projects/{project_id}/environments | List Environments |
| [**update_environment**](EnvironmentsApi.md#update_environment) | **PATCH** /v1/projects/{project_id}/environments/{environment_id} | Update Environment |


## create_environment

> <Environment> create_environment(project_id, new_environment, opts)

Create Environment

Create a new client environment under this organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::EnvironmentsApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
new_environment = OpenapiClient::NewEnvironment.new({name: 'name_example'}) # NewEnvironment | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Create Environment
  result = api_instance.create_environment(project_id, new_environment, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->create_environment: #{e}"
end
```

#### Using the create_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> create_environment_with_http_info(project_id, new_environment, opts)

```ruby
begin
  # Create Environment
  data, status_code, headers = api_instance.create_environment_with_http_info(project_id, new_environment, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->create_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **new_environment** | [**NewEnvironment**](NewEnvironment.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Environment**](Environment.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_environment

> delete_environment(environment_id, project_id, opts)

Delete Environment

Delete an existing Environment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::EnvironmentsApi.new
environment_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Delete Environment
  api_instance.delete_environment(environment_id, project_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->delete_environment: #{e}"
end
```

#### Using the delete_environment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_environment_with_http_info(environment_id, project_id, opts)

```ruby
begin
  # Delete Environment
  data, status_code, headers = api_instance.delete_environment_with_http_info(environment_id, project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->delete_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment_id** | **String** |  |  |
| **project_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_environment

> <Environment> get_environment(environment_id, project_id, opts)

Get Environment

Retrieve environment details.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::EnvironmentsApi.new
environment_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get Environment
  result = api_instance.get_environment(environment_id, project_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->get_environment: #{e}"
end
```

#### Using the get_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> get_environment_with_http_info(environment_id, project_id, opts)

```ruby
begin
  # Get Environment
  data, status_code, headers = api_instance.get_environment_with_http_info(environment_id, project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->get_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment_id** | **String** |  |  |
| **project_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Environment**](Environment.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_environments

> <EnvironmentList> list_environments(project_id, opts)

List Environments

Get a list of environments that are configured under this organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::EnvironmentsApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  skip: 56, # Integer | Skip first n results
  limit: 56, # Integer | Limit to n results
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # List Environments
  result = api_instance.list_environments(project_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->list_environments: #{e}"
end
```

#### Using the list_environments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentList>, Integer, Hash)> list_environments_with_http_info(project_id, opts)

```ruby
begin
  # List Environments
  data, status_code, headers = api_instance.list_environments_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->list_environments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **skip** | **Integer** | Skip first n results | [optional][default to 0] |
| **limit** | **Integer** | Limit to n results | [optional] |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**EnvironmentList**](EnvironmentList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_environment

> <Environment> update_environment(environment_id, project_id, update_environment, opts)

Update Environment

Update the environment settings.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::EnvironmentsApi.new
environment_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_environment = OpenapiClient::UpdateEnvironment.new # UpdateEnvironment | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Update Environment
  result = api_instance.update_environment(environment_id, project_id, update_environment, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->update_environment: #{e}"
end
```

#### Using the update_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> update_environment_with_http_info(environment_id, project_id, update_environment, opts)

```ruby
begin
  # Update Environment
  data, status_code, headers = api_instance.update_environment_with_http_info(environment_id, project_id, update_environment, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->update_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment_id** | **String** |  |  |
| **project_id** | **String** |  |  |
| **update_environment** | [**UpdateEnvironment**](UpdateEnvironment.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Environment**](Environment.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

