# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/featurestore.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/featurestore.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.Featurestore" do
      optional :name, :string, 1
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      optional :etag, :string, 5
      map :labels, :string, :string, 6
      optional :online_serving_config, :message, 7, "google.cloud.aiplatform.v1.Featurestore.OnlineServingConfig"
      optional :state, :enum, 8, "google.cloud.aiplatform.v1.Featurestore.State"
      optional :encryption_spec, :message, 10, "google.cloud.aiplatform.v1.EncryptionSpec"
    end
    add_message "google.cloud.aiplatform.v1.Featurestore.OnlineServingConfig" do
      optional :fixed_node_count, :int32, 2
      optional :scaling, :message, 4, "google.cloud.aiplatform.v1.Featurestore.OnlineServingConfig.Scaling"
    end
    add_message "google.cloud.aiplatform.v1.Featurestore.OnlineServingConfig.Scaling" do
      optional :min_node_count, :int32, 1
      optional :max_node_count, :int32, 2
      optional :cpu_utilization_target, :int32, 3
    end
    add_enum "google.cloud.aiplatform.v1.Featurestore.State" do
      value :STATE_UNSPECIFIED, 0
      value :STABLE, 1
      value :UPDATING, 2
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        Featurestore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Featurestore").msgclass
        Featurestore::OnlineServingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Featurestore.OnlineServingConfig").msgclass
        Featurestore::OnlineServingConfig::Scaling = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Featurestore.OnlineServingConfig.Scaling").msgclass
        Featurestore::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Featurestore.State").enummodule
      end
    end
  end
end
