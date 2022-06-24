=begin
#Permit.io API

#Fullstack Authorization as a Service

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module OpenapiClient
  class ActionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Action
    # Add a new action to an existing resource.
    # @param resource_id [String] 
    # @param new_action [NewAction] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Action]
    def create_action(resource_id, new_action, opts = {})
      data, _status_code, _headers = create_action_with_http_info(resource_id, new_action, opts)
      data
    end

    # Create Action
    # Add a new action to an existing resource.
    # @param resource_id [String] 
    # @param new_action [NewAction] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(Action, Integer, Hash)>] Action data, response status code and response headers
    def create_action_with_http_info(resource_id, new_action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.create_action ...'
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling ActionsApi.create_action"
      end
      # verify the required parameter 'new_action' is set
      if @api_client.config.client_side_validation && new_action.nil?
        fail ArgumentError, "Missing the required parameter 'new_action' when calling ActionsApi.create_action"
      end
      # resource path
      local_var_path = '/v1/resources/{resource_id}/actions'.sub('{' + 'resource_id' + '}', CGI.escape(resource_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(new_action)

      # return_type
      return_type = opts[:debug_return_type] || 'Action'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"ActionsApi.create_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#create_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Action
    # Delete an existing action
    # @param action_id [String] 
    # @param resource_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [nil]
    def delete_action(action_id, resource_id, opts = {})
      delete_action_with_http_info(action_id, resource_id, opts)
      nil
    end

    # Delete Action
    # Delete an existing action
    # @param action_id [String] 
    # @param resource_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_action_with_http_info(action_id, resource_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.delete_action ...'
      end
      # verify the required parameter 'action_id' is set
      if @api_client.config.client_side_validation && action_id.nil?
        fail ArgumentError, "Missing the required parameter 'action_id' when calling ActionsApi.delete_action"
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling ActionsApi.delete_action"
      end
      # resource path
      local_var_path = '/v1/resources/{resource_id}/actions/{action_id}'.sub('{' + 'action_id' + '}', CGI.escape(action_id.to_s)).sub('{' + 'resource_id' + '}', CGI.escape(resource_id.to_s))

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
        :operation => :"ActionsApi.delete_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#delete_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Action
    # Retrieve action details.
    # @param action_id [String] 
    # @param resource_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Action]
    def get_action(action_id, resource_id, opts = {})
      data, _status_code, _headers = get_action_with_http_info(action_id, resource_id, opts)
      data
    end

    # Get Action
    # Retrieve action details.
    # @param action_id [String] 
    # @param resource_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(Action, Integer, Hash)>] Action data, response status code and response headers
    def get_action_with_http_info(action_id, resource_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.get_action ...'
      end
      # verify the required parameter 'action_id' is set
      if @api_client.config.client_side_validation && action_id.nil?
        fail ArgumentError, "Missing the required parameter 'action_id' when calling ActionsApi.get_action"
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling ActionsApi.get_action"
      end
      # resource path
      local_var_path = '/v1/resources/{resource_id}/actions/{action_id}'.sub('{' + 'action_id' + '}', CGI.escape(action_id.to_s)).sub('{' + 'resource_id' + '}', CGI.escape(resource_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Action'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"ActionsApi.get_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#get_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Actions
    # Add a new action to an existing resource.
    # @param resource_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [ActionList]
    def list_actions(resource_id, opts = {})
      data, _status_code, _headers = list_actions_with_http_info(resource_id, opts)
      data
    end

    # List Actions
    # Add a new action to an existing resource.
    # @param resource_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(ActionList, Integer, Hash)>] ActionList data, response status code and response headers
    def list_actions_with_http_info(resource_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.list_actions ...'
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling ActionsApi.list_actions"
      end
      # resource path
      local_var_path = '/v1/resources/{resource_id}/actions'.sub('{' + 'resource_id' + '}', CGI.escape(resource_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ActionList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"ActionsApi.list_actions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#list_actions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sync Action
    # Create a resource action if it does not already exist.
    # @param resource_id [String] 
    # @param new_action [NewAction] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Action]
    def sync_action(resource_id, new_action, opts = {})
      data, _status_code, _headers = sync_action_with_http_info(resource_id, new_action, opts)
      data
    end

    # Sync Action
    # Create a resource action if it does not already exist.
    # @param resource_id [String] 
    # @param new_action [NewAction] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(Action, Integer, Hash)>] Action data, response status code and response headers
    def sync_action_with_http_info(resource_id, new_action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.sync_action ...'
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling ActionsApi.sync_action"
      end
      # verify the required parameter 'new_action' is set
      if @api_client.config.client_side_validation && new_action.nil?
        fail ArgumentError, "Missing the required parameter 'new_action' when calling ActionsApi.sync_action"
      end
      # resource path
      local_var_path = '/v1/resources/{resource_id}/actions'.sub('{' + 'resource_id' + '}', CGI.escape(resource_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(new_action)

      # return_type
      return_type = opts[:debug_return_type] || 'Action'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"ActionsApi.sync_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#sync_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Action
    # Update the action data.
    # @param action_id [String] 
    # @param resource_id [String] 
    # @param update_action [UpdateAction] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Action]
    def update_action(action_id, resource_id, update_action, opts = {})
      data, _status_code, _headers = update_action_with_http_info(action_id, resource_id, update_action, opts)
      data
    end

    # Update Action
    # Update the action data.
    # @param action_id [String] 
    # @param resource_id [String] 
    # @param update_action [UpdateAction] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(Action, Integer, Hash)>] Action data, response status code and response headers
    def update_action_with_http_info(action_id, resource_id, update_action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.update_action ...'
      end
      # verify the required parameter 'action_id' is set
      if @api_client.config.client_side_validation && action_id.nil?
        fail ArgumentError, "Missing the required parameter 'action_id' when calling ActionsApi.update_action"
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling ActionsApi.update_action"
      end
      # verify the required parameter 'update_action' is set
      if @api_client.config.client_side_validation && update_action.nil?
        fail ArgumentError, "Missing the required parameter 'update_action' when calling ActionsApi.update_action"
      end
      # resource path
      local_var_path = '/v1/resources/{resource_id}/actions/{action_id}'.sub('{' + 'action_id' + '}', CGI.escape(action_id.to_s)).sub('{' + 'resource_id' + '}', CGI.escape(resource_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_action)

      # return_type
      return_type = opts[:debug_return_type] || 'Action'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"ActionsApi.update_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#update_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end