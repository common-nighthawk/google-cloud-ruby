# frozen_string_literal: true

# Copyright 2021 Google LLC
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


module Google
  module Cloud
    module ContactCenterInsights
      module V1
        # The request for calculating conversation statistics.
        # @!attribute [rw] location
        #   @return [::String]
        #     Required. The location of the conversations.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter to reduce results to a specific subset. This field is useful for
        #     getting statistics about conversations with specific properties.
        class CalculateStatsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response for calculating conversation statistics.
        # @!attribute [rw] average_duration
        #   @return [::Google::Protobuf::Duration]
        #     The average duration of all conversations. The average is calculated using
        #     only conversations that have a time duration.
        # @!attribute [rw] average_turn_count
        #   @return [::Integer]
        #     The average number of turns per conversation.
        # @!attribute [rw] conversation_count
        #   @return [::Integer]
        #     The total number of conversations.
        # @!attribute [rw] smart_highlighter_matches
        #   @return [::Google::Protobuf::Map{::String => ::Integer}]
        #     A map associating each smart highlighter display name with its respective
        #     number of matches in the set of conversations.
        # @!attribute [rw] custom_highlighter_matches
        #   @return [::Google::Protobuf::Map{::String => ::Integer}]
        #     A map associating each custom highlighter resource name with its respective
        #     number of matches in the set of conversations.
        # @!attribute [rw] issue_matches
        #   @return [::Google::Protobuf::Map{::String => ::Integer}]
        #     A map associating each issue resource name with its respective number of
        #     matches in the set of conversations. Key has the format:
        #     `projects/<Project ID>/locations/<Location ID>/issueModels/<Issue Model
        #     ID>/issues/<Issue ID>`
        # @!attribute [rw] conversation_count_time_series
        #   @return [::Google::Cloud::ContactCenterInsights::V1::CalculateStatsResponse::TimeSeries]
        #     A time series representing the count of conversations created over time
        #     that match that requested filter criteria.
        class CalculateStatsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A time series representing conversations over time.
          # @!attribute [rw] interval_duration
          #   @return [::Google::Protobuf::Duration]
          #     The duration of each interval.
          # @!attribute [rw] points
          #   @return [::Array<::Google::Cloud::ContactCenterInsights::V1::CalculateStatsResponse::TimeSeries::Interval>]
          #     An ordered list of intervals from earliest to latest, where each interval
          #     represents the number of conversations that transpired during the time
          #     window.
          class TimeSeries
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # A single interval in a time series.
            # @!attribute [rw] start_time
            #   @return [::Google::Protobuf::Timestamp]
            #     The start time of this interval.
            # @!attribute [rw] conversation_count
            #   @return [::Integer]
            #     The number of conversations created in this interval.
            class Interval
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Integer]
          class SmartHighlighterMatchesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Integer]
          class CustomHighlighterMatchesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Integer]
          class IssueMatchesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Metadata for a create analysis operation.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [r] conversation
        #   @return [::String]
        #     Output only. The Conversation that this Analysis Operation belongs to.
        class CreateAnalysisOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to create a conversation.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the conversation.
        # @!attribute [rw] conversation
        #   @return [::Google::Cloud::ContactCenterInsights::V1::Conversation]
        #     Required. The conversation resource to create.
        # @!attribute [rw] conversation_id
        #   @return [::String]
        #     A unique ID for the new conversation. This ID will become the final
        #     component of the conversation's resource name. If no ID is specified, a
        #     server-generated ID will be used.
        #
        #     This value should be 4-32 characters and must match the regular
        #     expression /^[a-z0-9-]\\{4,32}$/. Valid characters are /[a-z][0-9]-/
        class CreateConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to list conversations.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the conversation.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of conversations to return in the response. A valid page
        #     size ranges from 0 to 1,000 inclusive. If the page size is zero or
        #     unspecified, a default page size of 100 will be chosen. Note that a call
        #     might return fewer results than the requested page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The value returned by the last `ListConversationsResponse`. This value
        #     indicates that this is a continuation of a prior `ListConversations` call
        #     and that the system should return the next page of data.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter to reduce results to a specific subset. Useful for querying
        #     conversations with specific properties.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::ContactCenterInsights::V1::ConversationView]
        #     The level of details of the conversation. Default is `BASIC`.
        class ListConversationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response of listing conversations.
        # @!attribute [rw] conversations
        #   @return [::Array<::Google::Cloud::ContactCenterInsights::V1::Conversation>]
        #     The conversations that match the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token which can be sent as `page_token` to retrieve the next page. If
        #     this field is set, it means there is another page available. If it is not
        #     set, it means no other pages are available.
        class ListConversationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to get a conversation.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the conversation to get.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::ContactCenterInsights::V1::ConversationView]
        #     The level of details of the conversation. Default is `FULL`.
        class GetConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to update a conversation.
        # @!attribute [rw] conversation
        #   @return [::Google::Cloud::ContactCenterInsights::V1::Conversation]
        #     Required. The new values for the conversation.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The list of fields to be updated.
        class UpdateConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to delete a conversation.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the conversation to delete.
        # @!attribute [rw] force
        #   @return [::Boolean]
        #     If set to true, all of this conversation's analyses will also be deleted.
        #     Otherwise, the request will only succeed if the conversation has no
        #     analyses.
        class DeleteConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to create an analysis.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the analysis.
        # @!attribute [rw] analysis
        #   @return [::Google::Cloud::ContactCenterInsights::V1::Analysis]
        #     Required. The analysis to create.
        class CreateAnalysisRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to list analyses.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the analyses.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of analyses to return in the response. If this
        #     value is zero, the service will select a default size. A call might return
        #     fewer objects than requested. A non-empty `next_page_token` in the response
        #     indicates that more data is available.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The value returned by the last `ListAnalysesResponse`; indicates
        #     that this is a continuation of a prior `ListAnalyses` call and
        #     the system should return the next page of data.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter to reduce results to a specific subset. Useful for querying
        #     conversations with specific properties.
        class ListAnalysesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response to list analyses.
        # @!attribute [rw] analyses
        #   @return [::Array<::Google::Cloud::ContactCenterInsights::V1::Analysis>]
        #     The analyses that match the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        class ListAnalysesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to get an analysis.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the analysis to get.
        class GetAnalysisRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to delete an analysis.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the analysis to delete.
        class DeleteAnalysisRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to export insights.
        # @!attribute [rw] big_query_destination
        #   @return [::Google::Cloud::ContactCenterInsights::V1::ExportInsightsDataRequest::BigQueryDestination]
        #     Specified if sink is a BigQuery table.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource to export data from.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter to reduce results to a specific subset. Useful for exporting
        #     conversations with specific properties.
        # @!attribute [rw] kms_key
        #   @return [::String]
        #     A fully qualified KMS key name for BigQuery tables protected by CMEK.
        #     Format:
        #     projects/\\{project}/locations/\\{location}/keyRings/\\{keyring}/cryptoKeys/\\{key}/cryptoKeyVersions/\\{version}
        class ExportInsightsDataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A BigQuery Table Reference.
          # @!attribute [rw] project_id
          #   @return [::String]
          #     A project ID or number. If specified, then export will attempt to
          #     write data to this project instead of the resource project. Otherwise,
          #     the resource project will be used.
          # @!attribute [rw] dataset
          #   @return [::String]
          #     Required. The name of the BigQuery dataset that the snapshot result should be
          #     exported to. If this dataset does not exist, the export call returns an
          #     INVALID_ARGUMENT error.
          # @!attribute [rw] table
          #   @return [::String]
          #     The BigQuery table name to which the insights data should be written.
          #     If this table does not exist, the export call returns an INVALID_ARGUMENT
          #     error.
          class BigQueryDestination
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Metadata for an export insights operation.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [rw] request
        #   @return [::Google::Cloud::ContactCenterInsights::V1::ExportInsightsDataRequest]
        #     The original request for export.
        # @!attribute [rw] partial_errors
        #   @return [::Array<::Google::Rpc::Status>]
        #     Partial errors during export operation that might cause the operation
        #     output to be incomplete.
        class ExportInsightsDataMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for an export insights operation.
        class ExportInsightsDataResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to create an issue model.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the issue model.
        # @!attribute [rw] issue_model
        #   @return [::Google::Cloud::ContactCenterInsights::V1::IssueModel]
        #     Required. The issue model to create.
        class CreateIssueModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for creating an issue model.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [rw] request
        #   @return [::Google::Cloud::ContactCenterInsights::V1::CreateIssueModelRequest]
        #     The original request for creation.
        class CreateIssueModelMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to update an issue model.
        # @!attribute [rw] issue_model
        #   @return [::Google::Cloud::ContactCenterInsights::V1::IssueModel]
        #     Required. The new values for the issue model.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The list of fields to be updated.
        class UpdateIssueModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to list issue models.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the issue model.
        class ListIssueModelsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response of listing issue models.
        # @!attribute [rw] issue_models
        #   @return [::Array<::Google::Cloud::ContactCenterInsights::V1::IssueModel>]
        #     The issue models that match the request.
        class ListIssueModelsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to get an issue model.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the issue model to get.
        class GetIssueModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to delete an issue model.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the issue model to delete.
        class DeleteIssueModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for deleting an issue model.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [rw] request
        #   @return [::Google::Cloud::ContactCenterInsights::V1::DeleteIssueModelRequest]
        #     The original request for deletion.
        class DeleteIssueModelMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to deploy an issue model.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The issue model to deploy.
        class DeployIssueModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response to deploy an issue model.
        class DeployIssueModelResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for deploying an issue model.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [rw] request
        #   @return [::Google::Cloud::ContactCenterInsights::V1::DeployIssueModelRequest]
        #     The original request for deployment.
        class DeployIssueModelMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to undeploy an issue model.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The issue model to undeploy.
        class UndeployIssueModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response to undeploy an issue model.
        class UndeployIssueModelResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for undeploying an issue model.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [rw] request
        #   @return [::Google::Cloud::ContactCenterInsights::V1::UndeployIssueModelRequest]
        #     The original request for undeployment.
        class UndeployIssueModelMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to get an issue.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the issue to get.
        class GetIssueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to list issues.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the issue.
        class ListIssuesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response of listing issues.
        # @!attribute [rw] issues
        #   @return [::Array<::Google::Cloud::ContactCenterInsights::V1::Issue>]
        #     The issues that match the request.
        class ListIssuesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to update an issue.
        # @!attribute [rw] issue
        #   @return [::Google::Cloud::ContactCenterInsights::V1::Issue]
        #     Required. The new values for the issue.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The list of fields to be updated.
        class UpdateIssueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to get statistics of an issue model.
        # @!attribute [rw] issue_model
        #   @return [::String]
        #     Required. The resource name of the issue model to query against.
        class CalculateIssueModelStatsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of querying an issue model's statistics.
        # @!attribute [rw] current_stats
        #   @return [::Google::Cloud::ContactCenterInsights::V1::IssueModelLabelStats]
        #     The latest label statistics for the queried issue model. Includes results
        #     on both training data and data labeled after deployment.
        class CalculateIssueModelStatsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to create a phrase matcher.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the phrase matcher. Required. The location to create
        #     a phrase matcher for.
        #     Format: `projects/<Project ID>/locations/<Location ID>` or
        #     `projects/<Project Number>/locations/<Location ID>`
        # @!attribute [rw] phrase_matcher
        #   @return [::Google::Cloud::ContactCenterInsights::V1::PhraseMatcher]
        #     Required. The phrase matcher resource to create.
        class CreatePhraseMatcherRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to list phrase matchers.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the phrase matcher.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of phrase matchers to return in the response. If this
        #     value is zero, the service will select a default size. A call might return
        #     fewer objects than requested. A non-empty `next_page_token` in the response
        #     indicates that more data is available.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The value returned by the last `ListPhraseMatchersResponse`. This value
        #     indicates that this is a continuation of a prior `ListPhraseMatchers` call
        #     and that the system should return the next page of data.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter to reduce results to a specific subset. Useful for querying
        #     phrase matchers with specific properties.
        class ListPhraseMatchersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response of listing phrase matchers.
        # @!attribute [rw] phrase_matchers
        #   @return [::Array<::Google::Cloud::ContactCenterInsights::V1::PhraseMatcher>]
        #     The phrase matchers that match the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        class ListPhraseMatchersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to get a a phrase matcher.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the phrase matcher to get.
        class GetPhraseMatcherRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to delete a phrase matcher.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the phrase matcher to delete.
        class DeletePhraseMatcherRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to get project-level settings.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the settings resource to get.
        class GetSettingsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to update project-level settings.
        # @!attribute [rw] settings
        #   @return [::Google::Cloud::ContactCenterInsights::V1::Settings]
        #     Required. The new settings values.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The list of fields to be updated.
        class UpdateSettingsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the options for views of a conversation.
        module ConversationView
          # Not specified. Defaults to FULL on GetConversationRequest and BASIC for
          # ListConversationsRequest.
          CONVERSATION_VIEW_UNSPECIFIED = 0

          # Transcript field is not populated in the response.
          BASIC = 1

          # All fields are populated.
          FULL = 2
        end
      end
    end
  end
end
