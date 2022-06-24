=begin
#Permit.io API

#Fullstack Authorization as a Service

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/action'
require 'openapi_client/models/action_list'
require 'openapi_client/models/action_properties'
require 'openapi_client/models/assigned_role'
require 'openapi_client/models/change_role_assignment'
require 'openapi_client/models/data_source_config'
require 'openapi_client/models/data_source_entry'
require 'openapi_client/models/decision_log_grant_permissions'
require 'openapi_client/models/decision_log_response'
require 'openapi_client/models/decision_log_response_list'
require 'openapi_client/models/decision_log_result_response'
require 'openapi_client/models/environment'
require 'openapi_client/models/environment_list'
require 'openapi_client/models/http_validation_error'
require 'openapi_client/models/new_action'
require 'openapi_client/models/new_environment'
require 'openapi_client/models/new_organization'
require 'openapi_client/models/new_pdp'
require 'openapi_client/models/new_project'
require 'openapi_client/models/new_remote_tenant'
require 'openapi_client/models/new_remote_user'
require 'openapi_client/models/new_resource'
require 'openapi_client/models/new_role'
require 'openapi_client/models/new_tenant'
require 'openapi_client/models/new_user'
require 'openapi_client/models/organization'
require 'openapi_client/models/organization_list'
require 'openapi_client/models/pdp'
require 'openapi_client/models/pdp_list'
require 'openapi_client/models/permission'
require 'openapi_client/models/permission_def'
require 'openapi_client/models/permission_identifier'
require 'openapi_client/models/permission_list'
require 'openapi_client/models/permission_selection'
require 'openapi_client/models/policy_config'
require 'openapi_client/models/policy_topics'
require 'openapi_client/models/project'
require 'openapi_client/models/project_list'
require 'openapi_client/models/remote_config'
require 'openapi_client/models/resource'
require 'openapi_client/models/resource_def'
require 'openapi_client/models/resource_definition'
require 'openapi_client/models/resource_definitions'
require 'openapi_client/models/resource_list'
require 'openapi_client/models/role'
require 'openapi_client/models/role_assignment'
require 'openapi_client/models/role_assignment_list'
require 'openapi_client/models/role_def'
require 'openapi_client/models/role_list'
require 'openapi_client/models/role_permissions'
require 'openapi_client/models/tenant'
require 'openapi_client/models/tenant_list'
require 'openapi_client/models/tenant_selection'
require 'openapi_client/models/update_action'
require 'openapi_client/models/update_environment'
require 'openapi_client/models/update_organization'
require 'openapi_client/models/update_pdp'
require 'openapi_client/models/update_project'
require 'openapi_client/models/update_resource'
require 'openapi_client/models/update_role'
require 'openapi_client/models/update_tenant'
require 'openapi_client/models/update_user'
require 'openapi_client/models/user'
require 'openapi_client/models/user_list_with_roles'
require 'openapi_client/models/user_roles'
require 'openapi_client/models/user_with_roles'
require 'openapi_client/models/validation_error'

# APIs
require 'openapi_client/api/actions_api'
require 'openapi_client/api/environments_api'
require 'openapi_client/api/organizations_api'
require 'openapi_client/api/pdp_decisions_api'
require 'openapi_client/api/permissions_api'
require 'openapi_client/api/policy_api'
require 'openapi_client/api/policy_decision_points_api'
require 'openapi_client/api/projects_api'
require 'openapi_client/api/resources_api'
require 'openapi_client/api/role_assignments_api'
require 'openapi_client/api/roles_api'
require 'openapi_client/api/tenants_api'
require 'openapi_client/api/users_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end