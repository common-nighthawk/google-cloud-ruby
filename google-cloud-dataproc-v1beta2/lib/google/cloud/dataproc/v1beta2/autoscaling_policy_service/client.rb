# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/errors"
require "google/cloud/dataproc/v1beta2/autoscaling_policies_pb"

module Google
  module Cloud
    module Dataproc
      module V1beta2
        module AutoscalingPolicyService
          ##
          # Client for the AutoscalingPolicyService service.
          #
          # The API interface for managing autoscaling policies in the
          # Cloud Dataproc API.
          #
          class Client
            include Paths

            # @private
            attr_reader :autoscaling_policy_service_stub

            ##
            # Configure the AutoscalingPolicyService Client class.
            #
            # See {::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicyService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # ## Example
            #
            # To modify the configuration for all AutoscalingPolicyService clients:
            #
            #     ::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicyService::Client.configure do |config|
            #       config.timeout = 10.0
            #     end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "Dataproc", "V1beta2"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const&.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.create_autoscaling_policy.timeout = 600.0

                default_config.rpcs.update_autoscaling_policy.timeout = 600.0
                default_config.rpcs.update_autoscaling_policy.retry_policy = {
                  initial_delay: 0.1,
                  max_delay:     60.0,
                  multiplier:    1.3,
                  retry_codes:   [4, 14]
                }

                default_config.rpcs.get_autoscaling_policy.timeout = 600.0
                default_config.rpcs.get_autoscaling_policy.retry_policy = {
                  initial_delay: 0.1,
                  max_delay:     60.0,
                  multiplier:    1.3,
                  retry_codes:   [4, 14]
                }

                default_config.rpcs.list_autoscaling_policies.timeout = 600.0
                default_config.rpcs.list_autoscaling_policies.retry_policy = {
                  initial_delay: 0.1,
                  max_delay:     60.0,
                  multiplier:    1.3,
                  retry_codes:   [4, 14]
                }

                default_config.rpcs.delete_autoscaling_policy.timeout = 600.0

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the AutoscalingPolicyService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicyService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new AutoscalingPolicyService client object.
            #
            # ## Examples
            #
            # To create a new AutoscalingPolicyService client with the default
            # configuration:
            #
            #     client = ::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicyService::Client.new
            #
            # To create a new AutoscalingPolicyService client with a custom
            # configuration:
            #
            #     client = ::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicyService::Client.new do |config|
            #       config.timeout = 10.0
            #     end
            #
            # @yield [config] Configure the AutoscalingPolicyService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/dataproc/v1beta2/autoscaling_policies_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              credentials ||= Credentials.default scope: @config.scope
              if credentials.is_a?(String) || credentials.is_a?(Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @autoscaling_policy_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicyService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Creates new autoscaling policy.
            #
            # @overload create_autoscaling_policy(request, options = nil)
            #   Pass arguments to `create_autoscaling_policy` via a request object, either of type
            #   {::Google::Cloud::Dataproc::V1beta2::CreateAutoscalingPolicyRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dataproc::V1beta2::CreateAutoscalingPolicyRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_autoscaling_policy(parent: nil, policy: nil)
            #   Pass arguments to `create_autoscaling_policy` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The "resource name" of the region or location, as described
            #     in https://cloud.google.com/apis/design/resource_names.
            #
            #     * For `projects.regions.autoscalingPolicies.create`, the resource name
            #       has the following format:
            #       `projects/{project_id}/regions/{region}`
            #
            #     * For `projects.locations.autoscalingPolicies.create`, the resource name
            #       has the following format:
            #       `projects/{project_id}/locations/{location}`
            #   @param policy [::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicy, ::Hash]
            #     Required. The autoscaling policy to create.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicy]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicy]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def create_autoscaling_policy request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1beta2::CreateAutoscalingPolicyRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_autoscaling_policy.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dataproc::V1beta2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "parent" => request.parent
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.create_autoscaling_policy.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_autoscaling_policy.retry_policy
              options.apply_defaults metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @autoscaling_policy_service_stub.call_rpc :create_autoscaling_policy, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Updates (replaces) autoscaling policy.
            #
            # Disabled check for update_mask, because all updates will be full
            # replacements.
            #
            # @overload update_autoscaling_policy(request, options = nil)
            #   Pass arguments to `update_autoscaling_policy` via a request object, either of type
            #   {::Google::Cloud::Dataproc::V1beta2::UpdateAutoscalingPolicyRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dataproc::V1beta2::UpdateAutoscalingPolicyRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload update_autoscaling_policy(policy: nil)
            #   Pass arguments to `update_autoscaling_policy` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param policy [::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicy, ::Hash]
            #     Required. The updated autoscaling policy.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicy]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicy]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def update_autoscaling_policy request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1beta2::UpdateAutoscalingPolicyRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.update_autoscaling_policy.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dataproc::V1beta2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "policy.name" => request.policy.name
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.update_autoscaling_policy.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.update_autoscaling_policy.retry_policy
              options.apply_defaults metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @autoscaling_policy_service_stub.call_rpc :update_autoscaling_policy, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Retrieves autoscaling policy.
            #
            # @overload get_autoscaling_policy(request, options = nil)
            #   Pass arguments to `get_autoscaling_policy` via a request object, either of type
            #   {::Google::Cloud::Dataproc::V1beta2::GetAutoscalingPolicyRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dataproc::V1beta2::GetAutoscalingPolicyRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_autoscaling_policy(name: nil)
            #   Pass arguments to `get_autoscaling_policy` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The "resource name" of the autoscaling policy, as described
            #     in https://cloud.google.com/apis/design/resource_names.
            #
            #     * For `projects.regions.autoscalingPolicies.get`, the resource name
            #       of the policy has the following format:
            #       `projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id}`
            #
            #     * For `projects.locations.autoscalingPolicies.get`, the resource name
            #       of the policy has the following format:
            #       `projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}`
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicy]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicy]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def get_autoscaling_policy request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1beta2::GetAutoscalingPolicyRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_autoscaling_policy.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dataproc::V1beta2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "name" => request.name
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_autoscaling_policy.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_autoscaling_policy.retry_policy
              options.apply_defaults metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @autoscaling_policy_service_stub.call_rpc :get_autoscaling_policy, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Lists autoscaling policies in the project.
            #
            # @overload list_autoscaling_policies(request, options = nil)
            #   Pass arguments to `list_autoscaling_policies` via a request object, either of type
            #   {::Google::Cloud::Dataproc::V1beta2::ListAutoscalingPoliciesRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dataproc::V1beta2::ListAutoscalingPoliciesRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_autoscaling_policies(parent: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_autoscaling_policies` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The "resource name" of the region or location, as described
            #     in https://cloud.google.com/apis/design/resource_names.
            #
            #     * For `projects.regions.autoscalingPolicies.list`, the resource name
            #       of the region has the following format:
            #       `projects/{project_id}/regions/{region}`
            #
            #     * For `projects.locations.autoscalingPolicies.list`, the resource name
            #       of the location has the following format:
            #       `projects/{project_id}/locations/{location}`
            #   @param page_size [::Integer]
            #     Optional. The maximum number of results to return in each response.
            #     Must be less than or equal to 1000. Defaults to 100.
            #   @param page_token [::String]
            #     Optional. The page token, returned by a previous call, to request the
            #     next page of results.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicy>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicy>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def list_autoscaling_policies request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1beta2::ListAutoscalingPoliciesRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_autoscaling_policies.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dataproc::V1beta2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "parent" => request.parent
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_autoscaling_policies.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_autoscaling_policies.retry_policy
              options.apply_defaults metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @autoscaling_policy_service_stub.call_rpc :list_autoscaling_policies, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @autoscaling_policy_service_stub, :list_autoscaling_policies, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Deletes an autoscaling policy. It is an error to delete an autoscaling
            # policy that is in use by one or more clusters.
            #
            # @overload delete_autoscaling_policy(request, options = nil)
            #   Pass arguments to `delete_autoscaling_policy` via a request object, either of type
            #   {::Google::Cloud::Dataproc::V1beta2::DeleteAutoscalingPolicyRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dataproc::V1beta2::DeleteAutoscalingPolicyRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload delete_autoscaling_policy(name: nil)
            #   Pass arguments to `delete_autoscaling_policy` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The "resource name" of the autoscaling policy, as described
            #     in https://cloud.google.com/apis/design/resource_names.
            #
            #     * For `projects.regions.autoscalingPolicies.delete`, the resource name
            #       of the policy has the following format:
            #       `projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id}`
            #
            #     * For `projects.locations.autoscalingPolicies.delete`, the resource name
            #       of the policy has the following format:
            #       `projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}`
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Protobuf::Empty]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Protobuf::Empty]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def delete_autoscaling_policy request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1beta2::DeleteAutoscalingPolicyRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.delete_autoscaling_policy.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dataproc::V1beta2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "name" => request.name
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.delete_autoscaling_policy.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.delete_autoscaling_policy.retry_policy
              options.apply_defaults metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @autoscaling_policy_service_stub.call_rpc :delete_autoscaling_policy, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the AutoscalingPolicyService API.
            #
            # This class represents the configuration for AutoscalingPolicyService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicyService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # # Examples
            #
            # To modify the global config, setting the timeout for create_autoscaling_policy
            # to 20 seconds, and all remaining timeouts to 10 seconds:
            #
            #     ::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicyService::Client.configure do |config|
            #       config.timeout = 10.0
            #       config.rpcs.create_autoscaling_policy.timeout = 20.0
            #     end
            #
            # To apply the above configuration only to a new client:
            #
            #     client = ::Google::Cloud::Dataproc::V1beta2::AutoscalingPolicyService::Client.new do |config|
            #       config.timeout = 10.0
            #       config.rpcs.create_autoscaling_policy.timeout = 20.0
            #     end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"dataproc.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "dataproc.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution"=>1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config&.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the AutoscalingPolicyService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `create_autoscaling_policy`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_autoscaling_policy
                ##
                # RPC-specific configuration for `update_autoscaling_policy`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :update_autoscaling_policy
                ##
                # RPC-specific configuration for `get_autoscaling_policy`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_autoscaling_policy
                ##
                # RPC-specific configuration for `list_autoscaling_policies`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_autoscaling_policies
                ##
                # RPC-specific configuration for `delete_autoscaling_policy`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :delete_autoscaling_policy

                # @private
                def initialize parent_rpcs = nil
                  create_autoscaling_policy_config = parent_rpcs&.create_autoscaling_policy if parent_rpcs&.respond_to? :create_autoscaling_policy
                  @create_autoscaling_policy = ::Gapic::Config::Method.new create_autoscaling_policy_config
                  update_autoscaling_policy_config = parent_rpcs&.update_autoscaling_policy if parent_rpcs&.respond_to? :update_autoscaling_policy
                  @update_autoscaling_policy = ::Gapic::Config::Method.new update_autoscaling_policy_config
                  get_autoscaling_policy_config = parent_rpcs&.get_autoscaling_policy if parent_rpcs&.respond_to? :get_autoscaling_policy
                  @get_autoscaling_policy = ::Gapic::Config::Method.new get_autoscaling_policy_config
                  list_autoscaling_policies_config = parent_rpcs&.list_autoscaling_policies if parent_rpcs&.respond_to? :list_autoscaling_policies
                  @list_autoscaling_policies = ::Gapic::Config::Method.new list_autoscaling_policies_config
                  delete_autoscaling_policy_config = parent_rpcs&.delete_autoscaling_policy if parent_rpcs&.respond_to? :delete_autoscaling_policy
                  @delete_autoscaling_policy = ::Gapic::Config::Method.new delete_autoscaling_policy_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
