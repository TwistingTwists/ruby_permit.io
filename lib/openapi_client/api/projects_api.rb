=begin
#Permit.io API

#Fullstack Authorization as a Service

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module OpenapiClient
  class ProjectsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Project
    # Create a new client project under this organization.
    # @param new_project [NewProject] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Project]
    def create_project(new_project, opts = {})
      data, _status_code, _headers = create_project_with_http_info(new_project, opts)
      data
    end

    # Create Project
    # Create a new client project under this organization.
    # @param new_project [NewProject] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(Project, Integer, Hash)>] Project data, response status code and response headers
    def create_project_with_http_info(new_project, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.create_project ...'
      end
      # verify the required parameter 'new_project' is set
      if @api_client.config.client_side_validation && new_project.nil?
        fail ArgumentError, "Missing the required parameter 'new_project' when calling ProjectsApi.create_project"
      end
      # resource path
      local_var_path = '/v1/projects'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(new_project)

      # return_type
      return_type = opts[:debug_return_type] || 'Project'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"ProjectsApi.create_project",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectsApi#create_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Project
    # Delete an existing Project.
    # @param project_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [nil]
    def delete_project(project_id, opts = {})
      delete_project_with_http_info(project_id, opts)
      nil
    end

    # Delete Project
    # Delete an existing Project.
    # @param project_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_project_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.delete_project ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ProjectsApi.delete_project"
      end
      # resource path
      local_var_path = '/v1/projects/{project_id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
        :operation => :"ProjectsApi.delete_project",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectsApi#delete_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Project
    # Retrieve project details.
    # @param project_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Project]
    def get_project(project_id, opts = {})
      data, _status_code, _headers = get_project_with_http_info(project_id, opts)
      data
    end

    # Get Project
    # Retrieve project details.
    # @param project_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(Project, Integer, Hash)>] Project data, response status code and response headers
    def get_project_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.get_project ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ProjectsApi.get_project"
      end
      # resource path
      local_var_path = '/v1/projects/{project_id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Project'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"ProjectsApi.get_project",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectsApi#get_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Projects
    # Get a list of projects that are configured under this organization.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Skip first n results (default to 0)
    # @option opts [Integer] :limit Limit to n results
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [ProjectList]
    def list_projects(opts = {})
      data, _status_code, _headers = list_projects_with_http_info(opts)
      data
    end

    # List Projects
    # Get a list of projects that are configured under this organization.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Skip first n results
    # @option opts [Integer] :limit Limit to n results
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(ProjectList, Integer, Hash)>] ProjectList data, response status code and response headers
    def list_projects_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.list_projects ...'
      end
      if @api_client.config.client_side_validation && !opts[:'skip'].nil? && opts[:'skip'] < 0
        fail ArgumentError, 'invalid value for "opts[:"skip"]" when calling ProjectsApi.list_projects, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ProjectsApi.list_projects, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ProjectsApi.list_projects, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/v1/projects'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

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
      return_type = opts[:debug_return_type] || 'ProjectList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"ProjectsApi.list_projects",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectsApi#list_projects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Project
    # Update the project settings.
    # @param project_id [String] 
    # @param update_project [UpdateProject] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Project]
    def update_project(project_id, update_project, opts = {})
      data, _status_code, _headers = update_project_with_http_info(project_id, update_project, opts)
      data
    end

    # Update Project
    # Update the project settings.
    # @param project_id [String] 
    # @param update_project [UpdateProject] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_organization_id The id of the active organization you want to query on
    # @return [Array<(Project, Integer, Hash)>] Project data, response status code and response headers
    def update_project_with_http_info(project_id, update_project, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.update_project ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ProjectsApi.update_project"
      end
      # verify the required parameter 'update_project' is set
      if @api_client.config.client_side_validation && update_project.nil?
        fail ArgumentError, "Missing the required parameter 'update_project' when calling ProjectsApi.update_project"
      end
      # resource path
      local_var_path = '/v1/projects/{project_id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_project)

      # return_type
      return_type = opts[:debug_return_type] || 'Project'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2PasswordBearer']

      new_options = opts.merge(
        :operation => :"ProjectsApi.update_project",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectsApi#update_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
