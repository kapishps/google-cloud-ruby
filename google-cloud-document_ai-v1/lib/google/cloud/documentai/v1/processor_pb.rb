# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/documentai/v1/processor.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/documentai/v1/document_schema_pb'
require 'google/cloud/documentai/v1/evaluation_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n*google/cloud/documentai/v1/processor.proto\x12\x1agoogle.cloud.documentai.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x30google/cloud/documentai/v1/document_schema.proto\x1a+google/cloud/documentai/v1/evaluation.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xb0\x07\n\x10ProcessorVersion\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x43\n\x0f\x64ocument_schema\x18\x0c \x01(\x0b\x32*.google.cloud.documentai.v1.DocumentSchema\x12\x41\n\x05state\x18\x06 \x01(\x0e\x32\x32.google.cloud.documentai.v1.ProcessorVersion.State\x12/\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12J\n\x11latest_evaluation\x18\x08 \x01(\x0b\x32/.google.cloud.documentai.v1.EvaluationReference\x12\x14\n\x0ckms_key_name\x18\t \x01(\t\x12\x1c\n\x14kms_key_version_name\x18\n \x01(\t\x12\x16\n\x0egoogle_managed\x18\x0b \x01(\x08\x12V\n\x10\x64\x65precation_info\x18\r \x01(\x0b\x32<.google.cloud.documentai.v1.ProcessorVersion.DeprecationInfo\x1a\x9f\x01\n\x0f\x44\x65precationInfo\x12\x34\n\x10\x64\x65precation_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12V\n\x1dreplacement_processor_version\x18\x02 \x01(\tB/\xfa\x41,\n*documentai.googleapis.com/ProcessorVersion\"\x93\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44\x45PLOYED\x10\x01\x12\r\n\tDEPLOYING\x10\x02\x12\x0e\n\nUNDEPLOYED\x10\x03\x12\x0f\n\x0bUNDEPLOYING\x10\x04\x12\x0c\n\x08\x43REATING\x10\x05\x12\x0c\n\x08\x44\x45LETING\x10\x06\x12\n\n\x06\x46\x41ILED\x10\x07\x12\r\n\tIMPORTING\x10\x08:\x96\x01\xea\x41\x92\x01\n*documentai.googleapis.com/ProcessorVersion\x12\x64projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processor_version}\"\xad\x04\n\tProcessor\x12\x14\n\x04name\x18\x01 \x01(\tB\x06\xe0\x41\x05\xe0\x41\x03\x12\x0c\n\x04type\x18\x02 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x03 \x01(\t\x12?\n\x05state\x18\x04 \x01(\x0e\x32+.google.cloud.documentai.v1.Processor.StateB\x03\xe0\x41\x03\x12R\n\x19\x64\x65\x66\x61ult_processor_version\x18\t \x01(\tB/\xfa\x41,\n*documentai.googleapis.com/ProcessorVersion\x12 \n\x10process_endpoint\x18\x06 \x01(\tB\x06\xe0\x41\x03\xe0\x41\x05\x12/\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x14\n\x0ckms_key_name\x18\x08 \x01(\t\"~\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x45NABLED\x10\x01\x12\x0c\n\x08\x44ISABLED\x10\x02\x12\x0c\n\x08\x45NABLING\x10\x03\x12\r\n\tDISABLING\x10\x04\x12\x0c\n\x08\x43REATING\x10\x05\x12\n\n\x06\x46\x41ILED\x10\x06\x12\x0c\n\x08\x44\x45LETING\x10\x07:h\xea\x41\x65\n#documentai.googleapis.com/Processor\x12>projects/{project}/locations/{location}/processors/{processor}B\xd1\x01\n\x1e\x63om.google.cloud.documentai.v1B\x13\x44ocumentAiProcessorP\x01Z>cloud.google.com/go/documentai/apiv1/documentaipb;documentaipb\xaa\x02\x1aGoogle.Cloud.DocumentAI.V1\xca\x02\x1aGoogle\\Cloud\\DocumentAI\\V1\xea\x02\x1dGoogle::Cloud::DocumentAI::V1b\x06proto3"

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
    ["google.cloud.documentai.v1.DocumentSchema", "google/cloud/documentai/v1/document_schema.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.documentai.v1.EvaluationReference", "google/cloud/documentai/v1/evaluation.proto"],
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
    module DocumentAI
      module V1
        ProcessorVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ProcessorVersion").msgclass
        ProcessorVersion::DeprecationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ProcessorVersion.DeprecationInfo").msgclass
        ProcessorVersion::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ProcessorVersion.State").enummodule
        Processor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Processor").msgclass
        Processor::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Processor.State").enummodule
      end
    end
  end
end
