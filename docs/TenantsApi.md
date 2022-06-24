# OpenapiClient::TenantsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tenant**](TenantsApi.md#create_tenant) | **POST** /v1/tenants | Create Tenant |
| [**delete_tenant**](TenantsApi.md#delete_tenant) | **DELETE** /v1/tenants/{tenant_id} | Delete Tenant |
| [**get_tenant**](TenantsApi.md#get_tenant) | **GET** /v1/tenants/{tenant_id} | Get Tenant |
| [**list_tenants**](TenantsApi.md#list_tenants) | **GET** /v1/tenants | List Tenants |
| [**sync_tenant**](TenantsApi.md#sync_tenant) | **PUT** /v1/tenants | Sync Tenant |
| [**update_tenant**](TenantsApi.md#update_tenant) | **PATCH** /v1/tenants/{tenant_id} | Update Tenant |


## create_tenant

> <Tenant> create_tenant(new_tenant, opts)

Create Tenant

Create a new Tenant under the active organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
new_tenant = OpenapiClient::NewTenant.new({name: 'name_example'}) # NewTenant | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Create Tenant
  result = api_instance.create_tenant(new_tenant, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->create_tenant: #{e}"
end
```

#### Using the create_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tenant>, Integer, Hash)> create_tenant_with_http_info(new_tenant, opts)

```ruby
begin
  # Create Tenant
  data, status_code, headers = api_instance.create_tenant_with_http_info(new_tenant, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tenant>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->create_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_tenant** | [**NewTenant**](NewTenant.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Tenant**](Tenant.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tenant

> delete_tenant(tenant_id, opts)

Delete Tenant

Delete an existing Tenant.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
tenant_id = 'tenant_id_example' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Delete Tenant
  api_instance.delete_tenant(tenant_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->delete_tenant: #{e}"
end
```

#### Using the delete_tenant_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tenant_with_http_info(tenant_id, opts)

```ruby
begin
  # Delete Tenant
  data, status_code, headers = api_instance.delete_tenant_with_http_info(tenant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->delete_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant

> <Tenant> get_tenant(tenant_id, opts)

Get Tenant

Retrieve Tenant details.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
tenant_id = 'tenant_id_example' # String | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Get Tenant
  result = api_instance.get_tenant(tenant_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->get_tenant: #{e}"
end
```

#### Using the get_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tenant>, Integer, Hash)> get_tenant_with_http_info(tenant_id, opts)

```ruby
begin
  # Get Tenant
  data, status_code, headers = api_instance.get_tenant_with_http_info(tenant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tenant>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->get_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Tenant**](Tenant.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tenants

> <TenantList> list_tenants(opts)

List Tenants

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
opts = {
  skip: 56, # Integer | Skip first n results
  limit: 56, # Integer | Limit to n results
  environment: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | filter only objects belonging to this environment
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # List Tenants
  result = api_instance.list_tenants(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->list_tenants: #{e}"
end
```

#### Using the list_tenants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantList>, Integer, Hash)> list_tenants_with_http_info(opts)

```ruby
begin
  # List Tenants
  data, status_code, headers = api_instance.list_tenants_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->list_tenants_with_http_info: #{e}"
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

[**TenantList**](TenantList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sync_tenant

> <Tenant> sync_tenant(new_remote_tenant, opts)

Sync Tenant

Create the Tenant if it doesn't already exist.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
new_remote_tenant = OpenapiClient::NewRemoteTenant.new({external_id: 'external_id_example', name: 'name_example'}) # NewRemoteTenant | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Sync Tenant
  result = api_instance.sync_tenant(new_remote_tenant, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->sync_tenant: #{e}"
end
```

#### Using the sync_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tenant>, Integer, Hash)> sync_tenant_with_http_info(new_remote_tenant, opts)

```ruby
begin
  # Sync Tenant
  data, status_code, headers = api_instance.sync_tenant_with_http_info(new_remote_tenant, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tenant>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->sync_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_remote_tenant** | [**NewRemoteTenant**](NewRemoteTenant.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Tenant**](Tenant.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tenant

> <Tenant> update_tenant(tenant_id, update_tenant, opts)

Update Tenant

Update the Tenant data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
tenant_id = 'tenant_id_example' # String | 
update_tenant = OpenapiClient::UpdateTenant.new # UpdateTenant | 
opts = {
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # Update Tenant
  result = api_instance.update_tenant(tenant_id, update_tenant, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->update_tenant: #{e}"
end
```

#### Using the update_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tenant>, Integer, Hash)> update_tenant_with_http_info(tenant_id, update_tenant, opts)

```ruby
begin
  # Update Tenant
  data, status_code, headers = api_instance.update_tenant_with_http_info(tenant_id, update_tenant, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tenant>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->update_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** |  |  |
| **update_tenant** | [**UpdateTenant**](UpdateTenant.md) |  |  |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**Tenant**](Tenant.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

