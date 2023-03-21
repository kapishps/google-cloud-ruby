# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "helper"
require "gapic/rest"
require "google/cloud/filestore/v1/cloud_filestore_service_pb"
require "google/cloud/filestore/v1/cloud_filestore_manager/rest"


class ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_list_instances
    # Create test objects.
    client_result = ::Google::Cloud::Filestore::V1::ListInstancesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"
    filter = "hello world"

    list_instances_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_list_instances_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_instances_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_instances({ parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_instances parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_instances ::Google::Cloud::Filestore::V1::ListInstancesRequest.new(parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_instances({ parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_instances(::Google::Cloud::Filestore::V1::ListInstancesRequest.new(parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_instances_client_stub.call_count
      end
    end
  end

  def test_get_instance
    # Create test objects.
    client_result = ::Google::Cloud::Filestore::V1::Instance.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_get_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_instance_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_instance({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_instance name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_instance ::Google::Cloud::Filestore::V1::GetInstanceRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_instance({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_instance(::Google::Cloud::Filestore::V1::GetInstanceRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_instance_client_stub.call_count
      end
    end
  end

  def test_create_instance
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    instance_id = "hello world"
    instance = {}

    create_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_create_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_instance_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_instance({ parent: parent, instance_id: instance_id, instance: instance }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_instance parent: parent, instance_id: instance_id, instance: instance do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_instance ::Google::Cloud::Filestore::V1::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_instance({ parent: parent, instance_id: instance_id, instance: instance }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_instance(::Google::Cloud::Filestore::V1::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_instance_client_stub.call_count
      end
    end
  end

  def test_update_instance
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    instance = {}

    update_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_update_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_instance_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_instance({ update_mask: update_mask, instance: instance }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_instance update_mask: update_mask, instance: instance do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_instance ::Google::Cloud::Filestore::V1::UpdateInstanceRequest.new(update_mask: update_mask, instance: instance) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_instance({ update_mask: update_mask, instance: instance }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_instance(::Google::Cloud::Filestore::V1::UpdateInstanceRequest.new(update_mask: update_mask, instance: instance), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_instance_client_stub.call_count
      end
    end
  end

  def test_restore_instance
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    file_share = "hello world"
    source_backup = "hello world"

    restore_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_restore_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, restore_instance_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.restore_instance({ name: name, file_share: file_share, source_backup: source_backup }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.restore_instance name: name, file_share: file_share, source_backup: source_backup do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.restore_instance ::Google::Cloud::Filestore::V1::RestoreInstanceRequest.new(name: name, file_share: file_share, source_backup: source_backup) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.restore_instance({ name: name, file_share: file_share, source_backup: source_backup }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.restore_instance(::Google::Cloud::Filestore::V1::RestoreInstanceRequest.new(name: name, file_share: file_share, source_backup: source_backup), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, restore_instance_client_stub.call_count
      end
    end
  end

  def test_delete_instance
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    force = true

    delete_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_delete_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_instance_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_instance({ name: name, force: force }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_instance name: name, force: force do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_instance ::Google::Cloud::Filestore::V1::DeleteInstanceRequest.new(name: name, force: force) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_instance({ name: name, force: force }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_instance(::Google::Cloud::Filestore::V1::DeleteInstanceRequest.new(name: name, force: force), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_instance_client_stub.call_count
      end
    end
  end

  def test_list_snapshots
    # Create test objects.
    client_result = ::Google::Cloud::Filestore::V1::ListSnapshotsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"
    filter = "hello world"

    list_snapshots_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_list_snapshots_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_snapshots_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_snapshots({ parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_snapshots parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_snapshots ::Google::Cloud::Filestore::V1::ListSnapshotsRequest.new(parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_snapshots({ parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_snapshots(::Google::Cloud::Filestore::V1::ListSnapshotsRequest.new(parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_snapshots_client_stub.call_count
      end
    end
  end

  def test_get_snapshot
    # Create test objects.
    client_result = ::Google::Cloud::Filestore::V1::Snapshot.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_snapshot_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_get_snapshot_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_snapshot_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_snapshot({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_snapshot name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_snapshot ::Google::Cloud::Filestore::V1::GetSnapshotRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_snapshot({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_snapshot(::Google::Cloud::Filestore::V1::GetSnapshotRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_snapshot_client_stub.call_count
      end
    end
  end

  def test_create_snapshot
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    snapshot_id = "hello world"
    snapshot = {}

    create_snapshot_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_create_snapshot_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_snapshot_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_snapshot({ parent: parent, snapshot_id: snapshot_id, snapshot: snapshot }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_snapshot parent: parent, snapshot_id: snapshot_id, snapshot: snapshot do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_snapshot ::Google::Cloud::Filestore::V1::CreateSnapshotRequest.new(parent: parent, snapshot_id: snapshot_id, snapshot: snapshot) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_snapshot({ parent: parent, snapshot_id: snapshot_id, snapshot: snapshot }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_snapshot(::Google::Cloud::Filestore::V1::CreateSnapshotRequest.new(parent: parent, snapshot_id: snapshot_id, snapshot: snapshot), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_snapshot_client_stub.call_count
      end
    end
  end

  def test_delete_snapshot
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_snapshot_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_delete_snapshot_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_snapshot_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_snapshot({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_snapshot name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_snapshot ::Google::Cloud::Filestore::V1::DeleteSnapshotRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_snapshot({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_snapshot(::Google::Cloud::Filestore::V1::DeleteSnapshotRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_snapshot_client_stub.call_count
      end
    end
  end

  def test_update_snapshot
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    snapshot = {}

    update_snapshot_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_update_snapshot_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_snapshot_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_snapshot({ update_mask: update_mask, snapshot: snapshot }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_snapshot update_mask: update_mask, snapshot: snapshot do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_snapshot ::Google::Cloud::Filestore::V1::UpdateSnapshotRequest.new(update_mask: update_mask, snapshot: snapshot) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_snapshot({ update_mask: update_mask, snapshot: snapshot }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_snapshot(::Google::Cloud::Filestore::V1::UpdateSnapshotRequest.new(update_mask: update_mask, snapshot: snapshot), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_snapshot_client_stub.call_count
      end
    end
  end

  def test_list_backups
    # Create test objects.
    client_result = ::Google::Cloud::Filestore::V1::ListBackupsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"
    filter = "hello world"

    list_backups_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_list_backups_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_backups_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_backups({ parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_backups parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_backups ::Google::Cloud::Filestore::V1::ListBackupsRequest.new(parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_backups({ parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_backups(::Google::Cloud::Filestore::V1::ListBackupsRequest.new(parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_backups_client_stub.call_count
      end
    end
  end

  def test_get_backup
    # Create test objects.
    client_result = ::Google::Cloud::Filestore::V1::Backup.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_backup_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_get_backup_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_backup_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_backup({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_backup name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_backup ::Google::Cloud::Filestore::V1::GetBackupRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_backup({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_backup(::Google::Cloud::Filestore::V1::GetBackupRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_backup_client_stub.call_count
      end
    end
  end

  def test_create_backup
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    backup = {}
    backup_id = "hello world"

    create_backup_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_create_backup_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_backup_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_backup({ parent: parent, backup: backup, backup_id: backup_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_backup parent: parent, backup: backup, backup_id: backup_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_backup ::Google::Cloud::Filestore::V1::CreateBackupRequest.new(parent: parent, backup: backup, backup_id: backup_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_backup({ parent: parent, backup: backup, backup_id: backup_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_backup(::Google::Cloud::Filestore::V1::CreateBackupRequest.new(parent: parent, backup: backup, backup_id: backup_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_backup_client_stub.call_count
      end
    end
  end

  def test_delete_backup
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_backup_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_delete_backup_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_backup_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_backup({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_backup name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_backup ::Google::Cloud::Filestore::V1::DeleteBackupRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_backup({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_backup(::Google::Cloud::Filestore::V1::DeleteBackupRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_backup_client_stub.call_count
      end
    end
  end

  def test_update_backup
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    backup = {}
    update_mask = {}

    update_backup_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::ServiceStub.stub :transcode_update_backup_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_backup_client_stub do
        # Create client
        client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_backup({ backup: backup, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_backup backup: backup, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_backup ::Google::Cloud::Filestore::V1::UpdateBackupRequest.new(backup: backup, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_backup({ backup: backup, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_backup(::Google::Cloud::Filestore::V1::UpdateBackupRequest.new(backup: backup, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_backup_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Rest::Client::Configuration, config
  end
end
