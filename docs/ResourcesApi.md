# OpenapiClient::ResourcesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_resource**](ResourcesApi.md#create_resource) | **POST** /v1/resources | Create Resource |
| [**delete_resource**](ResourcesApi.md#delete_resource) | **DELETE** /v1/resources/{resource_id} | Delete Resource |
| [**get_resource**](ResourcesApi.md#get_resource) | **GET** /v1/resources/{resource_id} | Get Resource |
| [**list_resources**](ResourcesApi.md#list_resources) | **GET** /v1/resources | List Resources |
| [**put_resource**](ResourcesApi.md#put_resource) | **PUT** /v1/resources/{resource_name} | Put Resource |
| [**sync_resources**](ResourcesApi.md#sync_resources) | **PUT** /v1/resources | Sync Resources |
| [**update_resource**](ResourcesApi.md#update_resource) | **PATCH** /v1/resources/{resource_id} | Update Resource |


## create_resource

> <Resource> create_resource(new_resource, opts)

Create Resource

Create a new resource under the active organization/environment.  If resource with the same name already exists, will throw exception. For get-or-create behavior, use sync_resource instead.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
new_resource = OpenapiClient::NewResource.new({type: 'type_example', name: 'name_example', path: 'path_example'}) # NewResource | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Create Resource
  result = api_instance.create_resource(new_resource, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->create_resource: #{e}"
end
```

#### Using the create_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_resource_with_http_info(new_resource, opts)

```ruby
begin
  # Create Resource
  data, status_code, headers = api_instance.create_resource_with_http_info(new_resource, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->create_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_resource** | [**NewResource**](NewResource.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource

> delete_resource(resource_id, opts)

Delete Resource

Delete an existing resource.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
resource_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Delete Resource
  api_instance.delete_resource(resource_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->delete_resource: #{e}"
end
```

#### Using the delete_resource_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_resource_with_http_info(resource_id, opts)

```ruby
begin
  # Delete Resource
  data, status_code, headers = api_instance.delete_resource_with_http_info(resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->delete_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource

> <Resource> get_resource(resource_id, opts)

Get Resource

Retrieve resource details.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
resource_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get Resource
  result = api_instance.get_resource(resource_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->get_resource: #{e}"
end
```

#### Using the get_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> get_resource_with_http_info(resource_id, opts)

```ruby
begin
  # Get Resource
  data, status_code, headers = api_instance.get_resource_with_http_info(resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->get_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resources

> <ResourceList> list_resources(opts)

List Resources

Get the list of the resources configured for this organization/environment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
opts = {
  include_built_ins: true, # Boolean | Whether or not the result should include resources that are automatically created by the system
  skip: 56, # Integer | Skip first n results
  limit: 56, # Integer | Limit to n results
  environment: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | filter only objects belonging to this environment
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # List Resources
  result = api_instance.list_resources(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->list_resources: #{e}"
end
```

#### Using the list_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceList>, Integer, Hash)> list_resources_with_http_info(opts)

```ruby
begin
  # List Resources
  data, status_code, headers = api_instance.list_resources_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->list_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_built_ins** | **Boolean** | Whether or not the result should include resources that are automatically created by the system | [optional][default to false] |
| **skip** | **Integer** | Skip first n results | [optional][default to 0] |
| **limit** | **Integer** | Limit to n results | [optional] |
| **environment** | **String** | filter only objects belonging to this environment | [optional] |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**ResourceList**](ResourceList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_resource

> <Resource> put_resource(resource_name, new_resource, opts)

Put Resource

Replaces a single resource. If the resource does not already exist, creates the resource.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
resource_name = 'resource_name_example' # String | 
new_resource = OpenapiClient::NewResource.new({type: 'type_example', name: 'name_example', path: 'path_example'}) # NewResource | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Put Resource
  result = api_instance.put_resource(resource_name, new_resource, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->put_resource: #{e}"
end
```

#### Using the put_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> put_resource_with_http_info(resource_name, new_resource, opts)

```ruby
begin
  # Put Resource
  data, status_code, headers = api_instance.put_resource_with_http_info(resource_name, new_resource, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->put_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_name** | **String** |  |  |
| **new_resource** | [**NewResource**](NewResource.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sync_resources

> <ResourceList> sync_resources(resource_definitions, opts)

Sync Resources

Syncs all the enforcement points in one request (Syncs all resources and actions)

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
resource_definitions = OpenapiClient::ResourceDefinitions.new({resources: [OpenapiClient::ResourceDefinition.new({type: 'type_example', actions: { key: OpenapiClient::ActionProperties.new}})]}) # ResourceDefinitions | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Sync Resources
  result = api_instance.sync_resources(resource_definitions, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->sync_resources: #{e}"
end
```

#### Using the sync_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceList>, Integer, Hash)> sync_resources_with_http_info(resource_definitions, opts)

```ruby
begin
  # Sync Resources
  data, status_code, headers = api_instance.sync_resources_with_http_info(resource_definitions, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->sync_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_definitions** | [**ResourceDefinitions**](ResourceDefinitions.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**ResourceList**](ResourceList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_resource

> <Resource> update_resource(resource_id, update_resource, opts)

Update Resource

Update the resource data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
resource_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_resource = OpenapiClient::UpdateResource.new # UpdateResource | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Update Resource
  result = api_instance.update_resource(resource_id, update_resource, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->update_resource: #{e}"
end
```

#### Using the update_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_resource_with_http_info(resource_id, update_resource, opts)

```ruby
begin
  # Update Resource
  data, status_code, headers = api_instance.update_resource_with_http_info(resource_id, update_resource, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->update_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  |  |
| **update_resource** | [**UpdateResource**](UpdateResource.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

