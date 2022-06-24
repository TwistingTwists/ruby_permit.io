# OpenapiClient::PolicyApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_opal_data_sources**](PolicyApi.md#get_opal_data_sources) | **GET** /opal/data/config | Get Opal Data Sources |
| [**get_policy**](PolicyApi.md#get_policy) | **GET** /v1/policy | Get Policy |
| [**get_policy_config**](PolicyApi.md#get_policy_config) | **GET** /v1/policy-config | Get Policy Config |
| [**get_policy_config_topics**](PolicyApi.md#get_policy_config_topics) | **GET** /v1/policy-config/topics | Get Policy Config Topics |


## get_opal_data_sources

> <DataSourceConfig> get_opal_data_sources(opts)

Get Opal Data Sources

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::PolicyApi.new
opts = {
  token: 'token_example' # String | 
}

begin
  # Get Opal Data Sources
  result = api_instance.get_opal_data_sources(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_opal_data_sources: #{e}"
end
```

#### Using the get_opal_data_sources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataSourceConfig>, Integer, Hash)> get_opal_data_sources_with_http_info(opts)

```ruby
begin
  # Get Opal Data Sources
  data, status_code, headers = api_instance.get_opal_data_sources_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataSourceConfig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_opal_data_sources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  | [optional] |

### Return type

[**DataSourceConfig**](DataSourceConfig.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_policy

> String get_policy(opts)

Get Policy

Retrieves the rego policy for a PDP.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PolicyApi.new
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get Policy
  result = api_instance.get_policy(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_policy: #{e}"
end
```

#### Using the get_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_policy_with_http_info(opts)

```ruby
begin
  # Get Policy
  data, status_code, headers = api_instance.get_policy_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

**String**

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## get_policy_config

> <PolicyConfig> get_policy_config(opts)

Get Policy Config

Retrieve OPA data for a PDP.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PolicyApi.new
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get Policy Config
  result = api_instance.get_policy_config(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_policy_config: #{e}"
end
```

#### Using the get_policy_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyConfig>, Integer, Hash)> get_policy_config_with_http_info(opts)

```ruby
begin
  # Get Policy Config
  data, status_code, headers = api_instance.get_policy_config_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyConfig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_policy_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**PolicyConfig**](PolicyConfig.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_policy_config_topics

> <PolicyTopics> get_policy_config_topics

Get Policy Config Topics

Retrieve policy data topics to subscribe to in order to get OPA data updates.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PolicyApi.new

begin
  # Get Policy Config Topics
  result = api_instance.get_policy_config_topics
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_policy_config_topics: #{e}"
end
```

#### Using the get_policy_config_topics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyTopics>, Integer, Hash)> get_policy_config_topics_with_http_info

```ruby
begin
  # Get Policy Config Topics
  data, status_code, headers = api_instance.get_policy_config_topics_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyTopics>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_policy_config_topics_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PolicyTopics**](PolicyTopics.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

