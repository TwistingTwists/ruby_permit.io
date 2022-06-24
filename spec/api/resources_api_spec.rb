=begin
#Permit.io API

#Fullstack Authorization as a Service

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::ResourcesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ResourcesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::ResourcesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResourcesApi' do
    it 'should create an instance of ResourcesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::ResourcesApi)
    end
  end

  # unit tests for create_resource
  # Create Resource
  # Create a new resource under the active organization/environment.  If resource with the same name already exists, will throw exception. For get-or-create behavior, use sync_resource instead.
  # @param new_resource 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_organization_id The id of the active organization you want to query on
  # @return [Resource]
  describe 'create_resource test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_resource
  # Delete Resource
  # Delete an existing resource.
  # @param resource_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_organization_id The id of the active organization you want to query on
  # @return [nil]
  describe 'delete_resource test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_resource
  # Get Resource
  # Retrieve resource details.
  # @param resource_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_organization_id The id of the active organization you want to query on
  # @return [Resource]
  describe 'get_resource test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_resources
  # List Resources
  # Get the list of the resources configured for this organization/environment.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_built_ins Whether or not the result should include resources that are automatically created by the system
  # @option opts [Integer] :skip Skip first n results
  # @option opts [Integer] :limit Limit to n results
  # @option opts [String] :environment filter only objects belonging to this environment
  # @option opts [String] :x_organization_id The id of the active organization you want to query on
  # @return [ResourceList]
  describe 'list_resources test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_resource
  # Put Resource
  # Replaces a single resource. If the resource does not already exist, creates the resource.
  # @param resource_name 
  # @param new_resource 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_organization_id The id of the active organization you want to query on
  # @return [Resource]
  describe 'put_resource test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sync_resources
  # Sync Resources
  # Syncs all the enforcement points in one request (Syncs all resources and actions)
  # @param resource_definitions 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_organization_id The id of the active organization you want to query on
  # @return [ResourceList]
  describe 'sync_resources test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_resource
  # Update Resource
  # Update the resource data.
  # @param resource_id 
  # @param update_resource 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_organization_id The id of the active organization you want to query on
  # @return [Resource]
  describe 'update_resource test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end