# OpenapiClient::ProjectsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_project**](ProjectsApi.md#create_project) | **POST** /v1/projects | Create Project |
| [**delete_project**](ProjectsApi.md#delete_project) | **DELETE** /v1/projects/{project_id} | Delete Project |
| [**get_project**](ProjectsApi.md#get_project) | **GET** /v1/projects/{project_id} | Get Project |
| [**list_projects**](ProjectsApi.md#list_projects) | **GET** /v1/projects | List Projects |
| [**update_project**](ProjectsApi.md#update_project) | **PATCH** /v1/projects/{project_id} | Update Project |


## create_project

> <Project> create_project(new_project, opts)

Create Project

Create a new client project under this organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ProjectsApi.new
new_project = OpenapiClient::NewProject.new({name: 'name_example'}) # NewProject | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Create Project
  result = api_instance.create_project(new_project, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->create_project: #{e}"
end
```

#### Using the create_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> create_project_with_http_info(new_project, opts)

```ruby
begin
  # Create Project
  data, status_code, headers = api_instance.create_project_with_http_info(new_project, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->create_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_project** | [**NewProject**](NewProject.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Project**](Project.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_project

> delete_project(project_id, opts)

Delete Project

Delete an existing Project.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ProjectsApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Delete Project
  api_instance.delete_project(project_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->delete_project: #{e}"
end
```

#### Using the delete_project_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_project_with_http_info(project_id, opts)

```ruby
begin
  # Delete Project
  data, status_code, headers = api_instance.delete_project_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->delete_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project

> <Project> get_project(project_id, opts)

Get Project

Retrieve project details.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ProjectsApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get Project
  result = api_instance.get_project(project_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->get_project: #{e}"
end
```

#### Using the get_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> get_project_with_http_info(project_id, opts)

```ruby
begin
  # Get Project
  data, status_code, headers = api_instance.get_project_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->get_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Project**](Project.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_projects

> <ProjectList> list_projects(opts)

List Projects

Get a list of projects that are configured under this organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ProjectsApi.new
opts = {
  skip: 56, # Integer | Skip first n results
  limit: 56, # Integer | Limit to n results
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # List Projects
  result = api_instance.list_projects(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->list_projects: #{e}"
end
```

#### Using the list_projects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectList>, Integer, Hash)> list_projects_with_http_info(opts)

```ruby
begin
  # List Projects
  data, status_code, headers = api_instance.list_projects_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->list_projects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip** | **Integer** | Skip first n results | [optional][default to 0] |
| **limit** | **Integer** | Limit to n results | [optional] |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**ProjectList**](ProjectList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_project

> <Project> update_project(project_id, update_project, opts)

Update Project

Update the project settings.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ProjectsApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_project = OpenapiClient::UpdateProject.new # UpdateProject | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Update Project
  result = api_instance.update_project(project_id, update_project, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->update_project: #{e}"
end
```

#### Using the update_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> update_project_with_http_info(project_id, update_project, opts)

```ruby
begin
  # Update Project
  data, status_code, headers = api_instance.update_project_with_http_info(project_id, update_project, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->update_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **update_project** | [**UpdateProject**](UpdateProject.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Project**](Project.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

