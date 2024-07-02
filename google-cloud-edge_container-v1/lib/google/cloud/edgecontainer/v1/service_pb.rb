# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/edgecontainer/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/edgecontainer/v1/resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n+google/cloud/edgecontainer/v1/service.proto\x12\x1dgoogle.cloud.edgecontainer.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a-google/cloud/edgecontainer/v1/resources.proto\x1a#google/longrunning/operations.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xef\x01\n\x11OperationMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x0e\n\x06target\x18\x03 \x01(\t\x12\x0c\n\x04verb\x18\x04 \x01(\t\x12\x16\n\x0estatus_message\x18\x05 \x01(\t\x12\x1e\n\x16requested_cancellation\x18\x06 \x01(\x08\x12\x13\n\x0b\x61pi_version\x18\x07 \x01(\t\x12\x10\n\x08warnings\x18\x08 \x03(\t\"\x9c\x01\n\x13ListClustersRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$edgecontainer.googleapis.com/Cluster\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"~\n\x14ListClustersResponse\x12\x38\n\x08\x63lusters\x18\x01 \x03(\x0b\x32&.google.cloud.edgecontainer.v1.Cluster\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"O\n\x11GetClusterRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$edgecontainer.googleapis.com/Cluster\"\xbf\x01\n\x14\x43reateClusterRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$edgecontainer.googleapis.com/Cluster\x12\x17\n\ncluster_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12<\n\x07\x63luster\x18\x03 \x01(\x0b\x32&.google.cloud.edgecontainer.v1.ClusterB\x03\xe0\x41\x02\x12\x12\n\nrequest_id\x18\x04 \x01(\t\"\x94\x01\n\x14UpdateClusterRequest\x12/\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x37\n\x07\x63luster\x18\x02 \x01(\x0b\x32&.google.cloud.edgecontainer.v1.Cluster\x12\x12\n\nrequest_id\x18\x03 \x01(\t\"\x8c\x02\n\x15UpgradeClusterRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$edgecontainer.googleapis.com/Cluster\x12\x1b\n\x0etarget_version\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12O\n\x08schedule\x18\x03 \x01(\x0e\x32=.google.cloud.edgecontainer.v1.UpgradeClusterRequest.Schedule\x12\x12\n\nrequest_id\x18\x04 \x01(\t\"5\n\x08Schedule\x12\x18\n\x14SCHEDULE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bIMMEDIATELY\x10\x01\"f\n\x14\x44\x65leteClusterRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$edgecontainer.googleapis.com/Cluster\x12\x12\n\nrequest_id\x18\x02 \x01(\t\"[\n\x1aGenerateAccessTokenRequest\x12=\n\x07\x63luster\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$edgecontainer.googleapis.com/Cluster\"n\n\x1bGenerateAccessTokenResponse\x12\x19\n\x0c\x61\x63\x63\x65ss_token\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpire_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"a\n GenerateOfflineCredentialRequest\x12=\n\x07\x63luster\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$edgecontainer.googleapis.com/Cluster\"\xa9\x01\n!GenerateOfflineCredentialResponse\x12\x1f\n\x12\x63lient_certificate\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\nclient_key\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x07user_id\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpire_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"\x9e\x01\n\x14ListNodePoolsRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\x12%edgecontainer.googleapis.com/NodePool\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"\x82\x01\n\x15ListNodePoolsResponse\x12;\n\nnode_pools\x18\x01 \x03(\x0b\x32\'.google.cloud.edgecontainer.v1.NodePool\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"Q\n\x12GetNodePoolRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%edgecontainer.googleapis.com/NodePool\"\xc6\x01\n\x15\x43reateNodePoolRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\x12%edgecontainer.googleapis.com/NodePool\x12\x19\n\x0cnode_pool_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12?\n\tnode_pool\x18\x03 \x01(\x0b\x32\'.google.cloud.edgecontainer.v1.NodePoolB\x03\xe0\x41\x02\x12\x12\n\nrequest_id\x18\x04 \x01(\t\"\x98\x01\n\x15UpdateNodePoolRequest\x12/\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12:\n\tnode_pool\x18\x02 \x01(\x0b\x32\'.google.cloud.edgecontainer.v1.NodePool\x12\x12\n\nrequest_id\x18\x03 \x01(\t\"h\n\x15\x44\x65leteNodePoolRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%edgecontainer.googleapis.com/NodePool\x12\x12\n\nrequest_id\x18\x02 \x01(\t\"\x9c\x01\n\x13ListMachinesRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$edgecontainer.googleapis.com/Machine\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"~\n\x14ListMachinesResponse\x12\x38\n\x08machines\x18\x01 \x03(\x0b\x32&.google.cloud.edgecontainer.v1.Machine\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"O\n\x11GetMachineRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$edgecontainer.googleapis.com/Machine\"\xa8\x01\n\x19ListVpnConnectionsRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*edgecontainer.googleapis.com/VpnConnection\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"\x91\x01\n\x1aListVpnConnectionsResponse\x12\x45\n\x0fvpn_connections\x18\x01 \x03(\x0b\x32,.google.cloud.edgecontainer.v1.VpnConnection\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"[\n\x17GetVpnConnectionRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*edgecontainer.googleapis.com/VpnConnection\"\xdf\x01\n\x1a\x43reateVpnConnectionRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*edgecontainer.googleapis.com/VpnConnection\x12\x1e\n\x11vpn_connection_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12I\n\x0evpn_connection\x18\x03 \x01(\x0b\x32,.google.cloud.edgecontainer.v1.VpnConnectionB\x03\xe0\x41\x02\x12\x12\n\nrequest_id\x18\x04 \x01(\t\"r\n\x1a\x44\x65leteVpnConnectionRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*edgecontainer.googleapis.com/VpnConnection\x12\x12\n\nrequest_id\x18\x02 \x01(\t\"Q\n\x16GetServerConfigRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location2\xfb!\n\rEdgeContainer\x12\xb6\x01\n\x0cListClusters\x12\x32.google.cloud.edgecontainer.v1.ListClustersRequest\x1a\x33.google.cloud.edgecontainer.v1.ListClustersResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v1/{parent=projects/*/locations/*}/clusters\x12\xa3\x01\n\nGetCluster\x12\x30.google.cloud.edgecontainer.v1.GetClusterRequest\x1a&.google.cloud.edgecontainer.v1.Cluster\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v1/{name=projects/*/locations/*/clusters/*}\x12\xdd\x01\n\rCreateCluster\x12\x33.google.cloud.edgecontainer.v1.CreateClusterRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x19parent,cluster,cluster_id\x82\xd3\xe4\x93\x02\x37\",/v1/{parent=projects/*/locations/*}/clusters:\x07\x63luster\x12\xdf\x01\n\rUpdateCluster\x12\x33.google.cloud.edgecontainer.v1.UpdateClusterRequest\x1a\x1d.google.longrunning.Operation\"z\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x13\x63luster,update_mask\x82\xd3\xe4\x93\x02?24/v1/{cluster.name=projects/*/locations/*/clusters/*}:\x07\x63luster\x12\xe4\x01\n\x0eUpgradeCluster\x12\x34.google.cloud.edgecontainer.v1.UpgradeClusterRequest\x1a\x1d.google.longrunning.Operation\"}\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x1cname,target_version,schedule\x82\xd3\xe4\x93\x02\x39\"4/v1/{name=projects/*/locations/*/clusters/*}:upgrade:\x01*\x12\xcd\x01\n\rDeleteCluster\x12\x33.google.cloud.edgecontainer.v1.DeleteClusterRequest\x1a\x1d.google.longrunning.Operation\"h\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02.*,/v1/{name=projects/*/locations/*/clusters/*}\x12\xe3\x01\n\x13GenerateAccessToken\x12\x39.google.cloud.edgecontainer.v1.GenerateAccessTokenRequest\x1a:.google.cloud.edgecontainer.v1.GenerateAccessTokenResponse\"U\xda\x41\x07\x63luster\x82\xd3\xe4\x93\x02\x45\x12\x43/v1/{cluster=projects/*/locations/*/clusters/*}:generateAccessToken\x12\xfb\x01\n\x19GenerateOfflineCredential\x12?.google.cloud.edgecontainer.v1.GenerateOfflineCredentialRequest\x1a@.google.cloud.edgecontainer.v1.GenerateOfflineCredentialResponse\"[\xda\x41\x07\x63luster\x82\xd3\xe4\x93\x02K\x12I/v1/{cluster=projects/*/locations/*/clusters/*}:generateOfflineCredential\x12\xc5\x01\n\rListNodePools\x12\x33.google.cloud.edgecontainer.v1.ListNodePoolsRequest\x1a\x34.google.cloud.edgecontainer.v1.ListNodePoolsResponse\"I\xda\x41\x06parent\x82\xd3\xe4\x93\x02:\x12\x38/v1/{parent=projects/*/locations/*/clusters/*}/nodePools\x12\xb2\x01\n\x0bGetNodePool\x12\x31.google.cloud.edgecontainer.v1.GetNodePoolRequest\x1a\'.google.cloud.edgecontainer.v1.NodePool\"G\xda\x41\x04name\x82\xd3\xe4\x93\x02:\x12\x38/v1/{name=projects/*/locations/*/clusters/*/nodePools/*}\x12\xf3\x01\n\x0e\x43reateNodePool\x12\x34.google.cloud.edgecontainer.v1.CreateNodePoolRequest\x1a\x1d.google.longrunning.Operation\"\x8b\x01\xca\x41\x1d\n\x08NodePool\x12\x11OperationMetadata\xda\x41\x1dparent,node_pool,node_pool_id\x82\xd3\xe4\x93\x02\x45\"8/v1/{parent=projects/*/locations/*/clusters/*}/nodePools:\tnode_pool\x12\xf5\x01\n\x0eUpdateNodePool\x12\x34.google.cloud.edgecontainer.v1.UpdateNodePoolRequest\x1a\x1d.google.longrunning.Operation\"\x8d\x01\xca\x41\x1d\n\x08NodePool\x12\x11OperationMetadata\xda\x41\x15node_pool,update_mask\x82\xd3\xe4\x93\x02O2B/v1/{node_pool.name=projects/*/locations/*/clusters/*/nodePools/*}:\tnode_pool\x12\xdb\x01\n\x0e\x44\x65leteNodePool\x12\x34.google.cloud.edgecontainer.v1.DeleteNodePoolRequest\x1a\x1d.google.longrunning.Operation\"t\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02:*8/v1/{name=projects/*/locations/*/clusters/*/nodePools/*}\x12\xb6\x01\n\x0cListMachines\x12\x32.google.cloud.edgecontainer.v1.ListMachinesRequest\x1a\x33.google.cloud.edgecontainer.v1.ListMachinesResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v1/{parent=projects/*/locations/*}/machines\x12\xa3\x01\n\nGetMachine\x12\x30.google.cloud.edgecontainer.v1.GetMachineRequest\x1a&.google.cloud.edgecontainer.v1.Machine\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v1/{name=projects/*/locations/*/machines/*}\x12\xce\x01\n\x12ListVpnConnections\x12\x38.google.cloud.edgecontainer.v1.ListVpnConnectionsRequest\x1a\x39.google.cloud.edgecontainer.v1.ListVpnConnectionsResponse\"C\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x34\x12\x32/v1/{parent=projects/*/locations/*}/vpnConnections\x12\xbb\x01\n\x10GetVpnConnection\x12\x36.google.cloud.edgecontainer.v1.GetVpnConnectionRequest\x1a,.google.cloud.edgecontainer.v1.VpnConnection\"A\xda\x41\x04name\x82\xd3\xe4\x93\x02\x34\x12\x32/v1/{name=projects/*/locations/*/vpnConnections/*}\x12\x8b\x02\n\x13\x43reateVpnConnection\x12\x39.google.cloud.edgecontainer.v1.CreateVpnConnectionRequest\x1a\x1d.google.longrunning.Operation\"\x99\x01\xca\x41\"\n\rVpnConnection\x12\x11OperationMetadata\xda\x41\'parent,vpn_connection,vpn_connection_id\x82\xd3\xe4\x93\x02\x44\"2/v1/{parent=projects/*/locations/*}/vpnConnections:\x0evpn_connection\x12\xdf\x01\n\x13\x44\x65leteVpnConnection\x12\x39.google.cloud.edgecontainer.v1.DeleteVpnConnectionRequest\x1a\x1d.google.longrunning.Operation\"n\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x34*2/v1/{name=projects/*/locations/*/vpnConnections/*}\x12\xb4\x01\n\x0fGetServerConfig\x12\x35.google.cloud.edgecontainer.v1.GetServerConfigRequest\x1a+.google.cloud.edgecontainer.v1.ServerConfig\"=\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30\x12./v1/{name=projects/*/locations/*}/serverConfig\x1aP\xca\x41\x1c\x65\x64gecontainer.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xdf\x01\n!com.google.cloud.edgecontainer.v1B\x0cServiceProtoP\x01ZGcloud.google.com/go/edgecontainer/apiv1/edgecontainerpb;edgecontainerpb\xaa\x02\x1dGoogle.Cloud.EdgeContainer.V1\xca\x02\x1dGoogle\\Cloud\\EdgeContainer\\V1\xea\x02 Google::Cloud::EdgeContainer::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.edgecontainer.v1.Cluster", "google/cloud/edgecontainer/v1/resources.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module EdgeContainer
      module V1
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.OperationMetadata").msgclass
        ListClustersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.ListClustersRequest").msgclass
        ListClustersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.ListClustersResponse").msgclass
        GetClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.GetClusterRequest").msgclass
        CreateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.CreateClusterRequest").msgclass
        UpdateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.UpdateClusterRequest").msgclass
        UpgradeClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.UpgradeClusterRequest").msgclass
        UpgradeClusterRequest::Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.UpgradeClusterRequest.Schedule").enummodule
        DeleteClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.DeleteClusterRequest").msgclass
        GenerateAccessTokenRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.GenerateAccessTokenRequest").msgclass
        GenerateAccessTokenResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.GenerateAccessTokenResponse").msgclass
        GenerateOfflineCredentialRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.GenerateOfflineCredentialRequest").msgclass
        GenerateOfflineCredentialResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.GenerateOfflineCredentialResponse").msgclass
        ListNodePoolsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.ListNodePoolsRequest").msgclass
        ListNodePoolsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.ListNodePoolsResponse").msgclass
        GetNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.GetNodePoolRequest").msgclass
        CreateNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.CreateNodePoolRequest").msgclass
        UpdateNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.UpdateNodePoolRequest").msgclass
        DeleteNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.DeleteNodePoolRequest").msgclass
        ListMachinesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.ListMachinesRequest").msgclass
        ListMachinesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.ListMachinesResponse").msgclass
        GetMachineRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.GetMachineRequest").msgclass
        ListVpnConnectionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.ListVpnConnectionsRequest").msgclass
        ListVpnConnectionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.ListVpnConnectionsResponse").msgclass
        GetVpnConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.GetVpnConnectionRequest").msgclass
        CreateVpnConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.CreateVpnConnectionRequest").msgclass
        DeleteVpnConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.DeleteVpnConnectionRequest").msgclass
        GetServerConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.edgecontainer.v1.GetServerConfigRequest").msgclass
      end
    end
  end
end
