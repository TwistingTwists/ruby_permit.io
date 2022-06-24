=begin
#Permit.io API

#Fullstack Authorization as a Service

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module OpenapiClient
  class TenantsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Tenant
    # Create a new Tenant under the active organization.
    # @param new_tenant [NewTenant] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Tenant]
    def create_tenant(new_tenant, opts = {})
      data, _status_code, _headers = create_tenant_with_http_info(new_tenant, opts)
      data
    end

    # Create Tenant
    # Create a new Tenant under the active organization.
    # @param new_tenant [NewTenant] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(Tenant, Integer, Hash)>] Tenant data, response status code and response headers
    def create_tenant_with_http_info(new_tenant, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TenantsApi.create_tenant ...'
      end
      # verify the required parameter 'new_tenant' is set
      if @api_client.config.client_side_validation && new_tenant.nil?
        fail ArgumentError, "Missing the required parameter 'new_tenant' when calling TenantsApi.create_tenant"
      end
      # resource path
      local_var_path = '/v1/tenants'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'x-organization-id'] = opts[:'x_organization_id'] if !opts[:'x_organization_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(new_tenant)

      # return_type
      return_type = opts[:debug_return_type] || 'Tenant'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"TenantsApi.create_tenant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TenantsApi#create_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Tenant
    # Delete an existing Tenant.
    # @param tenant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [nil]
    def delete_tenant(tenant_id, opts = {})
      delete_tenant_with_http_info(tenant_id, opts)
      nil
    end

    # Delete Tenant
    # Delete an existing Tenant.
    # @param tenant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tenant_with_http_info(tenant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TenantsApi.delete_tenant ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling TenantsApi.delete_tenant"
      end
      # resource path
      local_var_path = '/v1/tenants/{tenant_id}'.sub('{' + 'tenant_id' + '}', CGI.escape(tenant_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-organization-id'] = opts[:'x_organization_id'] if !opts[:'x_organization_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"TenantsApi.delete_tenant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TenantsApi#delete_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Tenant
    # Retrieve Tenant details.
    # @param tenant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Tenant]
    def get_tenant(tenant_id, opts = {})
      data, _status_code, _headers = get_tenant_with_http_info(tenant_id, opts)
      data
    end

    # Get Tenant
    # Retrieve Tenant details.
    # @param tenant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(Tenant, Integer, Hash)>] Tenant data, response status code and response headers
    def get_tenant_with_http_info(tenant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TenantsApi.get_tenant ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling TenantsApi.get_tenant"
      end
      # resource path
      local_var_path = '/v1/tenants/{tenant_id}'.sub('{' + 'tenant_id' + '}', CGI.escape(tenant_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-organization-id'] = opts[:'x_organization_id'] if !opts[:'x_organization_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Tenant'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"TenantsApi.get_tenant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TenantsApi#get_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Tenants
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Skip first n results (default to 0)
    # @option opts [Integer] :limit Limit to n results
    # @option opts [String] :environment filter only objects belonging to this environment
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [TenantList]
    def list_tenants(opts = {})
      data, _status_code, _headers = list_tenants_with_http_info(opts)
      data
    end

    # List Tenants
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Skip first n results
    # @option opts [Integer] :limit Limit to n results
    # @option opts [String] :environment filter only objects belonging to this environment
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(TenantList, Integer, Hash)>] TenantList data, response status code and response headers
    def list_tenants_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TenantsApi.list_tenants ...'
      end
      if @api_client.config.client_side_validation && !opts[:'skip'].nil? && opts[:'skip'] < 0
        fail ArgumentError, 'invalid value for "opts[:"skip"]" when calling TenantsApi.list_tenants, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TenantsApi.list_tenants, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TenantsApi.list_tenants, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/v1/tenants'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'environment'] = opts[:'environment'] if !opts[:'environment'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-organization-id'] = opts[:'x_organization_id'] if !opts[:'x_organization_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TenantList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"TenantsApi.list_tenants",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TenantsApi#list_tenants\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sync Tenant
    # Create the Tenant if it doesn't already exist.
    # @param new_remote_tenant [NewRemoteTenant] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Tenant]
    def sync_tenant(new_remote_tenant, opts = {})
      data, _status_code, _headers = sync_tenant_with_http_info(new_remote_tenant, opts)
      data
    end

    # Sync Tenant
    # Create the Tenant if it doesn&#39;t already exist.
    # @param new_remote_tenant [NewRemoteTenant] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(Tenant, Integer, Hash)>] Tenant data, response status code and response headers
    def sync_tenant_with_http_info(new_remote_tenant, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TenantsApi.sync_tenant ...'
      end
      # verify the required parameter 'new_remote_tenant' is set
      if @api_client.config.client_side_validation && new_remote_tenant.nil?
        fail ArgumentError, "Missing the required parameter 'new_remote_tenant' when calling TenantsApi.sync_tenant"
      end
      # resource path
      local_var_path = '/v1/tenants'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'x-organization-id'] = opts[:'x_organization_id'] if !opts[:'x_organization_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(new_remote_tenant)

      # return_type
      return_type = opts[:debug_return_type] || 'Tenant'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"TenantsApi.sync_tenant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TenantsApi#sync_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Tenant
    # Update the Tenant data.
    # @param tenant_id [String] 
    # @param update_tenant [UpdateTenant] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Tenant]
    def update_tenant(tenant_id, update_tenant, opts = {})
      data, _status_code, _headers = update_tenant_with_http_info(tenant_id, update_tenant, opts)
      data
    end

    # Update Tenant
    # Update the Tenant data.
    # @param tenant_id [String] 
    # @param update_tenant [UpdateTenant] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(Tenant, Integer, Hash)>] Tenant data, response status code and response headers
    def update_tenant_with_http_info(tenant_id, update_tenant, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TenantsApi.update_tenant ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling TenantsApi.update_tenant"
      end
      # verify the required parameter 'update_tenant' is set
      if @api_client.config.client_side_validation && update_tenant.nil?
        fail ArgumentError, "Missing the required parameter 'update_tenant' when calling TenantsApi.update_tenant"
      end
      # resource path
      local_var_path = '/v1/tenants/{tenant_id}'.sub('{' + 'tenant_id' + '}', CGI.escape(tenant_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'x-organization-id'] = opts[:'x_organization_id'] if !opts[:'x_organization_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_tenant)

      # return_type
      return_type = opts[:debug_return_type] || 'Tenant'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"TenantsApi.update_tenant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TenantsApi#update_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
