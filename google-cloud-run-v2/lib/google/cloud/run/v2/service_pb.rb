# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/run/v2/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/launch_stage_pb'
require 'google/api/resource_pb'
require 'google/api/routing_pb'
require 'google/cloud/run/v2/condition_pb'
require 'google/cloud/run/v2/revision_template_pb'
require 'google/cloud/run/v2/traffic_target_pb'
require 'google/cloud/run/v2/vendor_settings_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n!google/cloud/run/v2/service.proto\x12\x13google.cloud.run.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1dgoogle/api/launch_stage.proto\x1a\x19google/api/resource.proto\x1a\x18google/api/routing.proto\x1a#google/cloud/run/v2/condition.proto\x1a+google/cloud/run/v2/revision_template.proto\x1a(google/cloud/run/v2/traffic_target.proto\x1a)google/cloud/run/v2/vendor_settings.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a#google/longrunning/operations.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xae\x01\n\x14\x43reateServiceRequest\x12\x32\n\x06parent\x18\x01 \x01(\tB\"\xe0\x41\x02\xfa\x41\x1c\x12\x1arun.googleapis.com/Service\x12\x32\n\x07service\x18\x02 \x01(\x0b\x32\x1c.google.cloud.run.v2.ServiceB\x03\xe0\x41\x02\x12\x17\n\nservice_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\rvalidate_only\x18\x04 \x01(\x08\"x\n\x14UpdateServiceRequest\x12\x32\n\x07service\x18\x01 \x01(\x0b\x32\x1c.google.cloud.run.v2.ServiceB\x03\xe0\x41\x02\x12\x15\n\rvalidate_only\x18\x03 \x01(\x08\x12\x15\n\rallow_missing\x18\x04 \x01(\x08\"\x86\x01\n\x13ListServicesRequest\x12\x32\n\x06parent\x18\x01 \x01(\tB\"\xe0\x41\x02\xfa\x41\x1c\x12\x1arun.googleapis.com/Service\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x14\n\x0cshow_deleted\x18\x04 \x01(\x08\"_\n\x14ListServicesResponse\x12.\n\x08services\x18\x01 \x03(\x0b\x32\x1c.google.cloud.run.v2.Service\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"E\n\x11GetServiceRequest\x12\x30\n\x04name\x18\x01 \x01(\tB\"\xe0\x41\x02\xfa\x41\x1c\n\x1arun.googleapis.com/Service\"m\n\x14\x44\x65leteServiceRequest\x12\x30\n\x04name\x18\x01 \x01(\tB\"\xe0\x41\x02\xfa\x41\x1c\n\x1arun.googleapis.com/Service\x12\x15\n\rvalidate_only\x18\x02 \x01(\x08\x12\x0c\n\x04\x65tag\x18\x03 \x01(\t\"\xce\x0b\n\x07Service\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x10\n\x03uid\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\ngeneration\x18\x04 \x01(\x03\x42\x03\xe0\x41\x03\x12\x38\n\x06labels\x18\x05 \x03(\x0b\x32(.google.cloud.run.v2.Service.LabelsEntry\x12\x42\n\x0b\x61nnotations\x18\x06 \x03(\x0b\x32-.google.cloud.run.v2.Service.AnnotationsEntry\x12\x34\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x64\x65lete_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpire_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x14\n\x07\x63reator\x18\x0b \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\rlast_modifier\x18\x0c \x01(\tB\x03\xe0\x41\x03\x12\x0e\n\x06\x63lient\x18\r \x01(\t\x12\x16\n\x0e\x63lient_version\x18\x0e \x01(\t\x12\x34\n\x07ingress\x18\x0f \x01(\x0e\x32#.google.cloud.run.v2.IngressTraffic\x12-\n\x0claunch_stage\x18\x10 \x01(\x0e\x32\x17.google.api.LaunchStage\x12\x46\n\x14\x62inary_authorization\x18\x11 \x01(\x0b\x32(.google.cloud.run.v2.BinaryAuthorization\x12<\n\x08template\x18\x12 \x01(\x0b\x32%.google.cloud.run.v2.RevisionTemplateB\x03\xe0\x41\x02\x12\x33\n\x07traffic\x18\x13 \x03(\x0b\x32\".google.cloud.run.v2.TrafficTarget\x12 \n\x13observed_generation\x18\x1e \x01(\x03\x42\x03\xe0\x41\x03\x12?\n\x12terminal_condition\x18\x1f \x01(\x0b\x32\x1e.google.cloud.run.v2.ConditionB\x03\xe0\x41\x03\x12\x37\n\nconditions\x18  \x03(\x0b\x32\x1e.google.cloud.run.v2.ConditionB\x03\xe0\x41\x03\x12\x42\n\x15latest_ready_revision\x18! \x01(\tB#\xe0\x41\x03\xfa\x41\x1d\n\x1brun.googleapis.com/Revision\x12\x44\n\x17latest_created_revision\x18\" \x01(\tB#\xe0\x41\x03\xfa\x41\x1d\n\x1brun.googleapis.com/Revision\x12G\n\x10traffic_statuses\x18# \x03(\x0b\x32(.google.cloud.run.v2.TrafficTargetStatusB\x03\xe0\x41\x03\x12\x10\n\x03uri\x18$ \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x10\x63ustom_audiences\x18% \x03(\t\x12\x1a\n\rsatisfies_pzs\x18& \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0breconciling\x18\x62 \x01(\x08\x42\x03\xe0\x41\x03\x12\x11\n\x04\x65tag\x18\x63 \x01(\tB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:^\xea\x41[\n\x1arun.googleapis.com/Service\x12:projects/{project}/locations/{location}/services/{service}R\x01\x01\x32\xb7\r\n\x08Services\x12\xfd\x01\n\rCreateService\x12).google.cloud.run.v2.CreateServiceRequest\x1a\x1d.google.longrunning.Operation\"\xa1\x01\x82\xd3\xe4\x93\x02\x37\",/v2/{parent=projects/*/locations/*}/services:\x07service\x8a\xd3\xe4\x93\x02-\x12+\n\x06parent\x12!projects/*/locations/{location=*}\xda\x41\x19parent,service,service_id\xca\x41\x12\n\x07Service\x12\x07Service\x12\xc3\x01\n\nGetService\x12&.google.cloud.run.v2.GetServiceRequest\x1a\x1c.google.cloud.run.v2.Service\"o\x82\xd3\xe4\x93\x02.\x12,/v2/{name=projects/*/locations/*/services/*}\x8a\xd3\xe4\x93\x02.\x12,\n\x04name\x12$projects/*/locations/{location=*}/**\xda\x41\x04name\x12\xd5\x01\n\x0cListServices\x12(.google.cloud.run.v2.ListServicesRequest\x1a).google.cloud.run.v2.ListServicesResponse\"p\x82\xd3\xe4\x93\x02.\x12,/v2/{parent=projects/*/locations/*}/services\x8a\xd3\xe4\x93\x02-\x12+\n\x06parent\x12!projects/*/locations/{location=*}\xda\x41\x06parent\x12\xfc\x01\n\rUpdateService\x12).google.cloud.run.v2.UpdateServiceRequest\x1a\x1d.google.longrunning.Operation\"\xa0\x01\x82\xd3\xe4\x93\x02?24/v2/{service.name=projects/*/locations/*/services/*}:\x07service\x8a\xd3\xe4\x93\x02\x36\x12\x34\n\x0cservice.name\x12$projects/*/locations/{location=*}/**\xda\x41\x07service\xca\x41\x12\n\x07Service\x12\x07Service\x12\xe0\x01\n\rDeleteService\x12).google.cloud.run.v2.DeleteServiceRequest\x1a\x1d.google.longrunning.Operation\"\x84\x01\x82\xd3\xe4\x93\x02.*,/v2/{name=projects/*/locations/*/services/*}\x8a\xd3\xe4\x93\x02.\x12,\n\x04name\x12$projects/*/locations/{location=*}/**\xda\x41\x04name\xca\x41\x12\n\x07Service\x12\x07Service\x12\x90\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"E\x82\xd3\xe4\x93\x02?\x12=/v2/{resource=projects/*/locations/*/services/*}:getIamPolicy\x12\x93\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"H\x82\xd3\xe4\x93\x02\x42\"=/v2/{resource=projects/*/locations/*/services/*}:setIamPolicy:\x01*\x12\xb9\x01\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"N\x82\xd3\xe4\x93\x02H\"C/v2/{resource=projects/*/locations/*/services/*}:testIamPermissions:\x01*\x1a\x46\xca\x41\x12run.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformBT\n\x17\x63om.google.cloud.run.v2B\x0cServiceProtoP\x01Z)cloud.google.com/go/run/apiv2/runpb;runpbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.run.v2.BinaryAuthorization", "google/cloud/run/v2/vendor_settings.proto"],
    ["google.cloud.run.v2.RevisionTemplate", "google/cloud/run/v2/revision_template.proto"],
    ["google.cloud.run.v2.TrafficTarget", "google/cloud/run/v2/traffic_target.proto"],
    ["google.cloud.run.v2.Condition", "google/cloud/run/v2/condition.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Run
      module V2
        CreateServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.CreateServiceRequest").msgclass
        UpdateServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.UpdateServiceRequest").msgclass
        ListServicesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListServicesRequest").msgclass
        ListServicesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListServicesResponse").msgclass
        GetServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.GetServiceRequest").msgclass
        DeleteServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.DeleteServiceRequest").msgclass
        Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Service").msgclass
      end
    end
  end
end
