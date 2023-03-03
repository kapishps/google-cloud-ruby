# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/featurestore_service.proto for package 'Google.Cloud.AIPlatform.V1'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/aiplatform/v1/featurestore_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module FeaturestoreService
          # The service that handles CRUD and List for resources for Featurestore.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.FeaturestoreService'

            # Creates a new Featurestore in a given project and location.
            rpc :CreateFeaturestore, ::Google::Cloud::AIPlatform::V1::CreateFeaturestoreRequest, ::Google::Longrunning::Operation
            # Gets details of a single Featurestore.
            rpc :GetFeaturestore, ::Google::Cloud::AIPlatform::V1::GetFeaturestoreRequest, ::Google::Cloud::AIPlatform::V1::Featurestore
            # Lists Featurestores in a given project and location.
            rpc :ListFeaturestores, ::Google::Cloud::AIPlatform::V1::ListFeaturestoresRequest, ::Google::Cloud::AIPlatform::V1::ListFeaturestoresResponse
            # Updates the parameters of a single Featurestore.
            rpc :UpdateFeaturestore, ::Google::Cloud::AIPlatform::V1::UpdateFeaturestoreRequest, ::Google::Longrunning::Operation
            # Deletes a single Featurestore. The Featurestore must not contain any
            # EntityTypes or `force` must be set to true for the request to succeed.
            rpc :DeleteFeaturestore, ::Google::Cloud::AIPlatform::V1::DeleteFeaturestoreRequest, ::Google::Longrunning::Operation
            # Creates a new EntityType in a given Featurestore.
            rpc :CreateEntityType, ::Google::Cloud::AIPlatform::V1::CreateEntityTypeRequest, ::Google::Longrunning::Operation
            # Gets details of a single EntityType.
            rpc :GetEntityType, ::Google::Cloud::AIPlatform::V1::GetEntityTypeRequest, ::Google::Cloud::AIPlatform::V1::EntityType
            # Lists EntityTypes in a given Featurestore.
            rpc :ListEntityTypes, ::Google::Cloud::AIPlatform::V1::ListEntityTypesRequest, ::Google::Cloud::AIPlatform::V1::ListEntityTypesResponse
            # Updates the parameters of a single EntityType.
            rpc :UpdateEntityType, ::Google::Cloud::AIPlatform::V1::UpdateEntityTypeRequest, ::Google::Cloud::AIPlatform::V1::EntityType
            # Deletes a single EntityType. The EntityType must not have any Features
            # or `force` must be set to true for the request to succeed.
            rpc :DeleteEntityType, ::Google::Cloud::AIPlatform::V1::DeleteEntityTypeRequest, ::Google::Longrunning::Operation
            # Creates a new Feature in a given EntityType.
            rpc :CreateFeature, ::Google::Cloud::AIPlatform::V1::CreateFeatureRequest, ::Google::Longrunning::Operation
            # Creates a batch of Features in a given EntityType.
            rpc :BatchCreateFeatures, ::Google::Cloud::AIPlatform::V1::BatchCreateFeaturesRequest, ::Google::Longrunning::Operation
            # Gets details of a single Feature.
            rpc :GetFeature, ::Google::Cloud::AIPlatform::V1::GetFeatureRequest, ::Google::Cloud::AIPlatform::V1::Feature
            # Lists Features in a given EntityType.
            rpc :ListFeatures, ::Google::Cloud::AIPlatform::V1::ListFeaturesRequest, ::Google::Cloud::AIPlatform::V1::ListFeaturesResponse
            # Updates the parameters of a single Feature.
            rpc :UpdateFeature, ::Google::Cloud::AIPlatform::V1::UpdateFeatureRequest, ::Google::Cloud::AIPlatform::V1::Feature
            # Deletes a single Feature.
            rpc :DeleteFeature, ::Google::Cloud::AIPlatform::V1::DeleteFeatureRequest, ::Google::Longrunning::Operation
            # Imports Feature values into the Featurestore from a source storage.
            #
            # The progress of the import is tracked by the returned operation. The
            # imported features are guaranteed to be visible to subsequent read
            # operations after the operation is marked as successfully done.
            #
            # If an import operation fails, the Feature values returned from
            # reads and exports may be inconsistent. If consistency is
            # required, the caller must retry the same import request again and wait till
            # the new operation returned is marked as successfully done.
            #
            # There are also scenarios where the caller can cause inconsistency.
            #
            #  - Source data for import contains multiple distinct Feature values for
            #    the same entity ID and timestamp.
            #  - Source is modified during an import. This includes adding, updating, or
            #  removing source data and/or metadata. Examples of updating metadata
            #  include but are not limited to changing storage location, storage class,
            #  or retention policy.
            #  - Online serving cluster is under-provisioned.
            rpc :ImportFeatureValues, ::Google::Cloud::AIPlatform::V1::ImportFeatureValuesRequest, ::Google::Longrunning::Operation
            # Batch reads Feature values from a Featurestore.
            #
            # This API enables batch reading Feature values, where each read
            # instance in the batch may read Feature values of entities from one or
            # more EntityTypes. Point-in-time correctness is guaranteed for Feature
            # values of each read instance as of each instance's read timestamp.
            rpc :BatchReadFeatureValues, ::Google::Cloud::AIPlatform::V1::BatchReadFeatureValuesRequest, ::Google::Longrunning::Operation
            # Exports Feature values from all the entities of a target EntityType.
            rpc :ExportFeatureValues, ::Google::Cloud::AIPlatform::V1::ExportFeatureValuesRequest, ::Google::Longrunning::Operation
            # Delete Feature values from Featurestore.
            #
            # The progress of the deletion is tracked by the returned operation. The
            # deleted feature values are guaranteed to be invisible to subsequent read
            # operations after the operation is marked as successfully done.
            #
            # If a delete feature values operation fails, the feature values
            # returned from reads and exports may be inconsistent. If consistency is
            # required, the caller must retry the same delete request again and wait till
            # the new operation returned is marked as successfully done.
            rpc :DeleteFeatureValues, ::Google::Cloud::AIPlatform::V1::DeleteFeatureValuesRequest, ::Google::Longrunning::Operation
            # Searches Features matching a query in a given project.
            rpc :SearchFeatures, ::Google::Cloud::AIPlatform::V1::SearchFeaturesRequest, ::Google::Cloud::AIPlatform::V1::SearchFeaturesResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
