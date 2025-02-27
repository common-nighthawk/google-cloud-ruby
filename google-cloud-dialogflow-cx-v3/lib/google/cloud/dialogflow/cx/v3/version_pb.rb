# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/version.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/cx/v3/entity_type_pb'
require 'google/cloud/dialogflow/cx/v3/flow_pb'
require 'google/cloud/dialogflow/cx/v3/intent_pb'
require 'google/cloud/dialogflow/cx/v3/page_pb'
require 'google/cloud/dialogflow/cx/v3/transition_route_group_pb'
require 'google/cloud/dialogflow/cx/v3/webhook_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/cx/v3/version.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.cx.v3.CreateVersionOperationMetadata" do
      optional :version, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.Version" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :nlu_settings, :message, 4, "google.cloud.dialogflow.cx.v3.NluSettings"
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :state, :enum, 6, "google.cloud.dialogflow.cx.v3.Version.State"
    end
    add_enum "google.cloud.dialogflow.cx.v3.Version.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :FAILED, 3
    end
    add_message "google.cloud.dialogflow.cx.v3.ListVersionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dialogflow.cx.v3.ListVersionsResponse" do
      repeated :versions, :message, 1, "google.cloud.dialogflow.cx.v3.Version"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.GetVersionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.CreateVersionRequest" do
      optional :parent, :string, 1
      optional :version, :message, 2, "google.cloud.dialogflow.cx.v3.Version"
    end
    add_message "google.cloud.dialogflow.cx.v3.UpdateVersionRequest" do
      optional :version, :message, 1, "google.cloud.dialogflow.cx.v3.Version"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.dialogflow.cx.v3.DeleteVersionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.LoadVersionRequest" do
      optional :name, :string, 1
      optional :allow_override_agent_resources, :bool, 2
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          CreateVersionOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.CreateVersionOperationMetadata").msgclass
          Version = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Version").msgclass
          Version::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Version.State").enummodule
          ListVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListVersionsRequest").msgclass
          ListVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListVersionsResponse").msgclass
          GetVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetVersionRequest").msgclass
          CreateVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.CreateVersionRequest").msgclass
          UpdateVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.UpdateVersionRequest").msgclass
          DeleteVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DeleteVersionRequest").msgclass
          LoadVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.LoadVersionRequest").msgclass
        end
      end
    end
  end
end
