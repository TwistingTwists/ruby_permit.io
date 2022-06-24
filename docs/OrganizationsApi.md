# OpenapiClient::OrganizationsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_organization**](OrganizationsApi.md#create_organization) | **POST** /v1/organizations | Create Organization |
| [**delete_organization**](OrganizationsApi.md#delete_organization) | **DELETE** /v1/organizations/{organization_id} | Delete Organization |
| [**get_organization**](OrganizationsApi.md#get_organization) | **GET** /v1/organizations/{organization_id} | Get Organization |
| [**list_organizations**](OrganizationsApi.md#list_organizations) | **GET** /v1/organizations | List Organizations |
| [**update_organization**](OrganizationsApi.md#update_organization) | **PATCH** /v1/organizations/{organization_id} | Update Organization |


## create_organization

> <Organization> create_organization(new_organization, opts)

Create Organization

Create a new organization (will be owned by creating user).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
new_organization = OpenapiClient::NewOrganization.new({slug: 'slug_example', name: 'name_example'}) # NewOrganization | 
opts = {
  populate: true # Boolean | Populate organization with default tenant and project
}

begin
  # Create Organization
  result = api_instance.create_organization(new_organization, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->create_organization: #{e}"
end
```

#### Using the create_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> create_organization_with_http_info(new_organization, opts)

```ruby
begin
  # Create Organization
  data, status_code, headers = api_instance.create_organization_with_http_info(new_organization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->create_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_organization** | [**NewOrganization**](NewOrganization.md) |  |  |
| **populate** | **Boolean** | Populate organization with default tenant and project | [optional][default to false] |

### Return type

[**Organization**](Organization.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organization

> delete_organization(organization_id)

Delete Organization

Delete an existing Organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
organization_id = 'organization_id_example' # String | 

begin
  # Delete Organization
  api_instance.delete_organization(organization_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->delete_organization: #{e}"
end
```

#### Using the delete_organization_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_organization_with_http_info(organization_id)

```ruby
begin
  # Delete Organization
  data, status_code, headers = api_instance.delete_organization_with_http_info(organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->delete_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization

> <Organization> get_organization(organization_id)

Get Organization

Retrieve Organization details.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
organization_id = 'organization_id_example' # String | 

begin
  # Get Organization
  result = api_instance.get_organization(organization_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization: #{e}"
end
```

#### Using the get_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> get_organization_with_http_info(organization_id)

```ruby
begin
  # Get Organization
  data, status_code, headers = api_instance.get_organization_with_http_info(organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** |  |  |

### Return type

[**Organization**](Organization.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_organizations

> <OrganizationList> list_organizations(opts)

List Organizations

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
opts = {
  skip: 56, # Integer | Skip first n results
  limit: 56 # Integer | Limit to n results
}

begin
  # List Organizations
  result = api_instance.list_organizations(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->list_organizations: #{e}"
end
```

#### Using the list_organizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationList>, Integer, Hash)> list_organizations_with_http_info(opts)

```ruby
begin
  # List Organizations
  data, status_code, headers = api_instance.list_organizations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->list_organizations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip** | **Integer** | Skip first n results | [optional][default to 0] |
| **limit** | **Integer** | Limit to n results | [optional] |

### Return type

[**OrganizationList**](OrganizationList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organization

> <Organization> update_organization(organization_id, update_organization)

Update Organization

Update the Organization data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
organization_id = 'organization_id_example' # String | 
update_organization = OpenapiClient::UpdateOrganization.new # UpdateOrganization | 

begin
  # Update Organization
  result = api_instance.update_organization(organization_id, update_organization)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->update_organization: #{e}"
end
```

#### Using the update_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> update_organization_with_http_info(organization_id, update_organization)

```ruby
begin
  # Update Organization
  data, status_code, headers = api_instance.update_organization_with_http_info(organization_id, update_organization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->update_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** |  |  |
| **update_organization** | [**UpdateOrganization**](UpdateOrganization.md) |  |  |

### Return type

[**Organization**](Organization.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

