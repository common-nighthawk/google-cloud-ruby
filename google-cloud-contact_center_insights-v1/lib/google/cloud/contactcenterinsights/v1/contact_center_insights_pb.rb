# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/contactcenterinsights/v1/contact_center_insights.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/contactcenterinsights/v1/resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/contactcenterinsights/v1/contact_center_insights.proto", :syntax => :proto3) do
    add_message "google.cloud.contactcenterinsights.v1.CalculateStatsRequest" do
      optional :location, :string, 1
      optional :filter, :string, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.CalculateStatsResponse" do
      optional :average_duration, :message, 1, "google.protobuf.Duration"
      optional :average_turn_count, :int32, 2
      optional :conversation_count, :int32, 3
      map :smart_highlighter_matches, :string, :int32, 4
      map :custom_highlighter_matches, :string, :int32, 5
      map :issue_matches, :string, :int32, 6
      optional :conversation_count_time_series, :message, 7, "google.cloud.contactcenterinsights.v1.CalculateStatsResponse.TimeSeries"
    end
    add_message "google.cloud.contactcenterinsights.v1.CalculateStatsResponse.TimeSeries" do
      optional :interval_duration, :message, 1, "google.protobuf.Duration"
      repeated :points, :message, 2, "google.cloud.contactcenterinsights.v1.CalculateStatsResponse.TimeSeries.Interval"
    end
    add_message "google.cloud.contactcenterinsights.v1.CalculateStatsResponse.TimeSeries.Interval" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :conversation_count, :int32, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.CreateAnalysisOperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :conversation, :string, 3
    end
    add_message "google.cloud.contactcenterinsights.v1.CreateConversationRequest" do
      optional :parent, :string, 1
      optional :conversation, :message, 2, "google.cloud.contactcenterinsights.v1.Conversation"
      optional :conversation_id, :string, 3
    end
    add_message "google.cloud.contactcenterinsights.v1.ListConversationsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :view, :enum, 5, "google.cloud.contactcenterinsights.v1.ConversationView"
    end
    add_message "google.cloud.contactcenterinsights.v1.ListConversationsResponse" do
      repeated :conversations, :message, 1, "google.cloud.contactcenterinsights.v1.Conversation"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.GetConversationRequest" do
      optional :name, :string, 1
      optional :view, :enum, 2, "google.cloud.contactcenterinsights.v1.ConversationView"
    end
    add_message "google.cloud.contactcenterinsights.v1.UpdateConversationRequest" do
      optional :conversation, :message, 1, "google.cloud.contactcenterinsights.v1.Conversation"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.contactcenterinsights.v1.DeleteConversationRequest" do
      optional :name, :string, 1
      optional :force, :bool, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.CreateAnalysisRequest" do
      optional :parent, :string, 1
      optional :analysis, :message, 2, "google.cloud.contactcenterinsights.v1.Analysis"
    end
    add_message "google.cloud.contactcenterinsights.v1.ListAnalysesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.contactcenterinsights.v1.ListAnalysesResponse" do
      repeated :analyses, :message, 1, "google.cloud.contactcenterinsights.v1.Analysis"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.GetAnalysisRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.DeleteAnalysisRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.ExportInsightsDataRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 3
      optional :kms_key, :string, 4
      oneof :destination do
        optional :big_query_destination, :message, 2, "google.cloud.contactcenterinsights.v1.ExportInsightsDataRequest.BigQueryDestination"
      end
    end
    add_message "google.cloud.contactcenterinsights.v1.ExportInsightsDataRequest.BigQueryDestination" do
      optional :project_id, :string, 3
      optional :dataset, :string, 1
      optional :table, :string, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.ExportInsightsDataMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :request, :message, 3, "google.cloud.contactcenterinsights.v1.ExportInsightsDataRequest"
      repeated :partial_errors, :message, 4, "google.rpc.Status"
    end
    add_message "google.cloud.contactcenterinsights.v1.ExportInsightsDataResponse" do
    end
    add_message "google.cloud.contactcenterinsights.v1.CreateIssueModelRequest" do
      optional :parent, :string, 1
      optional :issue_model, :message, 2, "google.cloud.contactcenterinsights.v1.IssueModel"
    end
    add_message "google.cloud.contactcenterinsights.v1.CreateIssueModelMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :request, :message, 3, "google.cloud.contactcenterinsights.v1.CreateIssueModelRequest"
    end
    add_message "google.cloud.contactcenterinsights.v1.UpdateIssueModelRequest" do
      optional :issue_model, :message, 1, "google.cloud.contactcenterinsights.v1.IssueModel"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.contactcenterinsights.v1.ListIssueModelsRequest" do
      optional :parent, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.ListIssueModelsResponse" do
      repeated :issue_models, :message, 1, "google.cloud.contactcenterinsights.v1.IssueModel"
    end
    add_message "google.cloud.contactcenterinsights.v1.GetIssueModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.DeleteIssueModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.DeleteIssueModelMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :request, :message, 3, "google.cloud.contactcenterinsights.v1.DeleteIssueModelRequest"
    end
    add_message "google.cloud.contactcenterinsights.v1.DeployIssueModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.DeployIssueModelResponse" do
    end
    add_message "google.cloud.contactcenterinsights.v1.DeployIssueModelMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :request, :message, 3, "google.cloud.contactcenterinsights.v1.DeployIssueModelRequest"
    end
    add_message "google.cloud.contactcenterinsights.v1.UndeployIssueModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.UndeployIssueModelResponse" do
    end
    add_message "google.cloud.contactcenterinsights.v1.UndeployIssueModelMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :request, :message, 3, "google.cloud.contactcenterinsights.v1.UndeployIssueModelRequest"
    end
    add_message "google.cloud.contactcenterinsights.v1.GetIssueRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.ListIssuesRequest" do
      optional :parent, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.ListIssuesResponse" do
      repeated :issues, :message, 1, "google.cloud.contactcenterinsights.v1.Issue"
    end
    add_message "google.cloud.contactcenterinsights.v1.UpdateIssueRequest" do
      optional :issue, :message, 1, "google.cloud.contactcenterinsights.v1.Issue"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.contactcenterinsights.v1.CalculateIssueModelStatsRequest" do
      optional :issue_model, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.CalculateIssueModelStatsResponse" do
      optional :current_stats, :message, 4, "google.cloud.contactcenterinsights.v1.IssueModelLabelStats"
    end
    add_message "google.cloud.contactcenterinsights.v1.CreatePhraseMatcherRequest" do
      optional :parent, :string, 1
      optional :phrase_matcher, :message, 2, "google.cloud.contactcenterinsights.v1.PhraseMatcher"
    end
    add_message "google.cloud.contactcenterinsights.v1.ListPhraseMatchersRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.contactcenterinsights.v1.ListPhraseMatchersResponse" do
      repeated :phrase_matchers, :message, 1, "google.cloud.contactcenterinsights.v1.PhraseMatcher"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.GetPhraseMatcherRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.DeletePhraseMatcherRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.GetSettingsRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.UpdateSettingsRequest" do
      optional :settings, :message, 1, "google.cloud.contactcenterinsights.v1.Settings"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_enum "google.cloud.contactcenterinsights.v1.ConversationView" do
      value :CONVERSATION_VIEW_UNSPECIFIED, 0
      value :BASIC, 1
      value :FULL, 2
    end
  end
end

module Google
  module Cloud
    module ContactCenterInsights
      module V1
        CalculateStatsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CalculateStatsRequest").msgclass
        CalculateStatsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CalculateStatsResponse").msgclass
        CalculateStatsResponse::TimeSeries = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CalculateStatsResponse.TimeSeries").msgclass
        CalculateStatsResponse::TimeSeries::Interval = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CalculateStatsResponse.TimeSeries.Interval").msgclass
        CreateAnalysisOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CreateAnalysisOperationMetadata").msgclass
        CreateConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CreateConversationRequest").msgclass
        ListConversationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ListConversationsRequest").msgclass
        ListConversationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ListConversationsResponse").msgclass
        GetConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.GetConversationRequest").msgclass
        UpdateConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.UpdateConversationRequest").msgclass
        DeleteConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.DeleteConversationRequest").msgclass
        CreateAnalysisRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CreateAnalysisRequest").msgclass
        ListAnalysesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ListAnalysesRequest").msgclass
        ListAnalysesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ListAnalysesResponse").msgclass
        GetAnalysisRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.GetAnalysisRequest").msgclass
        DeleteAnalysisRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.DeleteAnalysisRequest").msgclass
        ExportInsightsDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ExportInsightsDataRequest").msgclass
        ExportInsightsDataRequest::BigQueryDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ExportInsightsDataRequest.BigQueryDestination").msgclass
        ExportInsightsDataMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ExportInsightsDataMetadata").msgclass
        ExportInsightsDataResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ExportInsightsDataResponse").msgclass
        CreateIssueModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CreateIssueModelRequest").msgclass
        CreateIssueModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CreateIssueModelMetadata").msgclass
        UpdateIssueModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.UpdateIssueModelRequest").msgclass
        ListIssueModelsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ListIssueModelsRequest").msgclass
        ListIssueModelsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ListIssueModelsResponse").msgclass
        GetIssueModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.GetIssueModelRequest").msgclass
        DeleteIssueModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.DeleteIssueModelRequest").msgclass
        DeleteIssueModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.DeleteIssueModelMetadata").msgclass
        DeployIssueModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.DeployIssueModelRequest").msgclass
        DeployIssueModelResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.DeployIssueModelResponse").msgclass
        DeployIssueModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.DeployIssueModelMetadata").msgclass
        UndeployIssueModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.UndeployIssueModelRequest").msgclass
        UndeployIssueModelResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.UndeployIssueModelResponse").msgclass
        UndeployIssueModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.UndeployIssueModelMetadata").msgclass
        GetIssueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.GetIssueRequest").msgclass
        ListIssuesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ListIssuesRequest").msgclass
        ListIssuesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ListIssuesResponse").msgclass
        UpdateIssueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.UpdateIssueRequest").msgclass
        CalculateIssueModelStatsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CalculateIssueModelStatsRequest").msgclass
        CalculateIssueModelStatsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CalculateIssueModelStatsResponse").msgclass
        CreatePhraseMatcherRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CreatePhraseMatcherRequest").msgclass
        ListPhraseMatchersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ListPhraseMatchersRequest").msgclass
        ListPhraseMatchersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ListPhraseMatchersResponse").msgclass
        GetPhraseMatcherRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.GetPhraseMatcherRequest").msgclass
        DeletePhraseMatcherRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.DeletePhraseMatcherRequest").msgclass
        GetSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.GetSettingsRequest").msgclass
        UpdateSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.UpdateSettingsRequest").msgclass
        ConversationView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ConversationView").enummodule
      end
    end
  end
end
