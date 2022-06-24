# OpenapiClient::PDPDecisionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_decision_logs**](PDPDecisionsApi.md#get_decision_logs) | **GET** /v1/pdps/{pdp_id}/decision_logs | List PDP Decisions |


## get_decision_logs

> <DecisionLogResponseList> get_decision_logs(pdp_id, opts)

List PDP Decisions

Get a list of all PDP decisions filtered by users, timestamp, decision, etc.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2PasswordBearer
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PDPDecisionsApi.new
pdp_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  users: ['inner_example'], # Array<String> | List of user IDs to filter by
  approved: true, # Boolean | Filter by approved decisions
  resources: ['inner_example'], # Array<String> | Filter by resources
  timestamp_from: 56, # Integer | Filter by timestamp from
  timestamp_to: 56, # Integer | Filter by timestamp to
  skip: 56, # Integer | Skip first n results
  limit: 56, # Integer | Limit to n results
  x_organization_id: 'x_organization_id_example' # String | The id of the active organization you want to query on
}

begin
  # List PDP Decisions
  result = api_instance.get_decision_logs(pdp_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PDPDecisionsApi->get_decision_logs: #{e}"
end
```

#### Using the get_decision_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DecisionLogResponseList>, Integer, Hash)> get_decision_logs_with_http_info(pdp_id, opts)

```ruby
begin
  # List PDP Decisions
  data, status_code, headers = api_instance.get_decision_logs_with_http_info(pdp_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DecisionLogResponseList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PDPDecisionsApi->get_decision_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pdp_id** | **String** |  |  |
| **users** | [**Array&lt;String&gt;**](String.md) | List of user IDs to filter by | [optional] |
| **approved** | **Boolean** | Filter by approved decisions | [optional] |
| **resources** | [**Array&lt;String&gt;**](String.md) | Filter by resources | [optional] |
| **timestamp_from** | **Integer** | Filter by timestamp from | [optional] |
| **timestamp_to** | **Integer** | Filter by timestamp to | [optional] |
| **skip** | **Integer** | Skip first n results | [optional][default to 0] |
| **limit** | **Integer** | Limit to n results | [optional][default to 100] |
| **x_organization_id** | **String** | The id of the active organization you want to query on | [optional] |

### Return type

[**DecisionLogResponseList**](DecisionLogResponseList.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

