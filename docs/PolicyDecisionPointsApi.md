# OpenapiClient::PolicyDecisionPointsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_pdp**](PolicyDecisionPointsApi.md#create_pdp) | **POST** /v1/pdps | Create Policy Decision Point |
| [**delete_pdp**](PolicyDecisionPointsApi.md#delete_pdp) | **DELETE** /v1/pdps/{pdp_id} | Delete Policy Decision Point |
| [**get_current_pdp_config**](PolicyDecisionPointsApi.md#get_current_pdp_config) | **GET** /v1/pdps/me/config | Get Connected PDP Config |
| [**get_pdp**](PolicyDecisionPointsApi.md#get_pdp) | **GET** /v1/pdps/{pdp_id} | Get Policy Decision Point |
| [**get_pdp_config**](PolicyDecisionPointsApi.md#get_pdp_config) | **GET** /v1/pdps/{pdp_id}/config | Get PDP Config |
| [**list_pdps**](PolicyDecisionPointsApi.md#list_pdps) | **GET** /v1/pdps | List Policy Decision Points |
| [**rotate_pdp_secret**](PolicyDecisionPointsApi.md#rotate_pdp_secret) | **POST** /v1/pdps/{pdp_id}/rotate-secret | Rotate PDP Secret |
| [**update_pdp**](PolicyDecisionPointsApi.md#update_pdp) | **PATCH** /v1/pdps/{pdp_id} | Update Policy Decision Point |


## create_pdp

> <PDP> create_pdp(new_pdp, opts)

Create Policy Decision Point

Create a new Policy Decision Point.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new
new_pdp = OpenapiClient::NewPDP.new({name: 'name_example', environment_id: 'environment_id_example'}) # NewPDP | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Create Policy Decision Point
  result = api_instance.create_pdp(new_pdp, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->create_pdp: #{e}"
end
```

#### Using the create_pdp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PDP>, Integer, Hash)> create_pdp_with_http_info(new_pdp, opts)

```ruby
begin
  # Create Policy Decision Point
  data, status_code, headers = api_instance.create_pdp_with_http_info(new_pdp, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PDP>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->create_pdp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_pdp** | [**NewPDP**](NewPDP.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**PDP**](PDP.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pdp

> delete_pdp(pdp_id, opts)

Delete Policy Decision Point

Delete an existing PDP.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new
pdp_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Delete Policy Decision Point
  api_instance.delete_pdp(pdp_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->delete_pdp: #{e}"
end
```

#### Using the delete_pdp_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pdp_with_http_info(pdp_id, opts)

```ruby
begin
  # Delete Policy Decision Point
  data, status_code, headers = api_instance.delete_pdp_with_http_info(pdp_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->delete_pdp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pdp_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_current_pdp_config

> <RemoteConfig> get_current_pdp_config

Get Connected PDP Config

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new

begin
  # Get Connected PDP Config
  result = api_instance.get_current_pdp_config
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_current_pdp_config: #{e}"
end
```

#### Using the get_current_pdp_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteConfig>, Integer, Hash)> get_current_pdp_config_with_http_info

```ruby
begin
  # Get Connected PDP Config
  data, status_code, headers = api_instance.get_current_pdp_config_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteConfig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_current_pdp_config_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RemoteConfig**](RemoteConfig.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pdp

> <PDP> get_pdp(pdp_id, opts)

Get Policy Decision Point

Retrieve PDP details.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new
pdp_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get Policy Decision Point
  result = api_instance.get_pdp(pdp_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_pdp: #{e}"
end
```

#### Using the get_pdp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PDP>, Integer, Hash)> get_pdp_with_http_info(pdp_id, opts)

```ruby
begin
  # Get Policy Decision Point
  data, status_code, headers = api_instance.get_pdp_with_http_info(pdp_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PDP>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_pdp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pdp_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**PDP**](PDP.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pdp_config

> <RemoteConfig> get_pdp_config(pdp_id, opts)

Get PDP Config

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new
pdp_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get PDP Config
  result = api_instance.get_pdp_config(pdp_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_pdp_config: #{e}"
end
```

#### Using the get_pdp_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteConfig>, Integer, Hash)> get_pdp_config_with_http_info(pdp_id, opts)

```ruby
begin
  # Get PDP Config
  data, status_code, headers = api_instance.get_pdp_config_with_http_info(pdp_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteConfig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_pdp_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pdp_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**RemoteConfig**](RemoteConfig.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pdps

> <PDPList> list_pdps(opts)

List Policy Decision Points

Get a list of PDPs configured under this organization/environment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new
opts = {
  skip: 56, # Integer | Skip first n results
  limit: 56, # Integer | Limit to n results
  environment: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | filter only objects belonging to this environment
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # List Policy Decision Points
  result = api_instance.list_pdps(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->list_pdps: #{e}"
end
```

#### Using the list_pdps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PDPList>, Integer, Hash)> list_pdps_with_http_info(opts)

```ruby
begin
  # List Policy Decision Points
  data, status_code, headers = api_instance.list_pdps_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PDPList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->list_pdps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip** | **Integer** | Skip first n results | [optional][default to 0] |
| **limit** | **Integer** | Limit to n results | [optional] |
| **environment** | **String** | filter only objects belonging to this environment | [optional] |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**PDPList**](PDPList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rotate_pdp_secret

> <PDP> rotate_pdp_secret(pdp_id, opts)

Rotate PDP Secret

Rotate the client secret for this project.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new
pdp_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Rotate PDP Secret
  result = api_instance.rotate_pdp_secret(pdp_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->rotate_pdp_secret: #{e}"
end
```

#### Using the rotate_pdp_secret_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PDP>, Integer, Hash)> rotate_pdp_secret_with_http_info(pdp_id, opts)

```ruby
begin
  # Rotate PDP Secret
  data, status_code, headers = api_instance.rotate_pdp_secret_with_http_info(pdp_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PDP>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->rotate_pdp_secret_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pdp_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**PDP**](PDP.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_pdp

> <PDP> update_pdp(pdp_id, update_pdp, opts)

Update Policy Decision Point

Update the PDP settings.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new
pdp_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_pdp = OpenapiClient::UpdatePDP.new # UpdatePDP | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Update Policy Decision Point
  result = api_instance.update_pdp(pdp_id, update_pdp, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->update_pdp: #{e}"
end
```

#### Using the update_pdp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PDP>, Integer, Hash)> update_pdp_with_http_info(pdp_id, update_pdp, opts)

```ruby
begin
  # Update Policy Decision Point
  data, status_code, headers = api_instance.update_pdp_with_http_info(pdp_id, update_pdp, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PDP>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->update_pdp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pdp_id** | **String** |  |  |
| **update_pdp** | [**UpdatePDP**](UpdatePDP.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**PDP**](PDP.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

