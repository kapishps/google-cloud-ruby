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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/identitytoolkit/v2/authentication_service_pb"
require "google/cloud/identitytoolkit/v2/authentication_service_services_pb"
require "google/cloud/identity_toolkit/v2/authentication_service"

class ::Google::Cloud::IdentityToolkit::V2::AuthenticationService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_finalize_mfa_sign_in
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::IdentityToolkit::V2::FinalizeMfaSignInResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    mfa_pending_credential = "hello world"
    phone_verification_info = {}
    tenant_id = "hello world"

    finalize_mfa_sign_in_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :finalize_mfa_sign_in, name
      assert_kind_of ::Google::Cloud::IdentityToolkit::V2::FinalizeMfaSignInRequest, request
      assert_equal "hello world", request["mfa_pending_credential"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::IdentityToolkit::V2::FinalizeMfaPhoneRequestInfo), request["phone_verification_info"]
      assert_equal :phone_verification_info, request.verification_info
      assert_equal "hello world", request["tenant_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, finalize_mfa_sign_in_client_stub do
      # Create client
      client = ::Google::Cloud::IdentityToolkit::V2::AuthenticationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.finalize_mfa_sign_in({ mfa_pending_credential: mfa_pending_credential, phone_verification_info: phone_verification_info, tenant_id: tenant_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.finalize_mfa_sign_in mfa_pending_credential: mfa_pending_credential, phone_verification_info: phone_verification_info, tenant_id: tenant_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.finalize_mfa_sign_in ::Google::Cloud::IdentityToolkit::V2::FinalizeMfaSignInRequest.new(mfa_pending_credential: mfa_pending_credential, phone_verification_info: phone_verification_info, tenant_id: tenant_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.finalize_mfa_sign_in({ mfa_pending_credential: mfa_pending_credential, phone_verification_info: phone_verification_info, tenant_id: tenant_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.finalize_mfa_sign_in(::Google::Cloud::IdentityToolkit::V2::FinalizeMfaSignInRequest.new(mfa_pending_credential: mfa_pending_credential, phone_verification_info: phone_verification_info, tenant_id: tenant_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, finalize_mfa_sign_in_client_stub.call_rpc_count
    end
  end

  def test_start_mfa_sign_in
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::IdentityToolkit::V2::StartMfaSignInResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    mfa_pending_credential = "hello world"
    mfa_enrollment_id = "hello world"
    phone_sign_in_info = {}
    tenant_id = "hello world"

    start_mfa_sign_in_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :start_mfa_sign_in, name
      assert_kind_of ::Google::Cloud::IdentityToolkit::V2::StartMfaSignInRequest, request
      assert_equal "hello world", request["mfa_pending_credential"]
      assert_equal "hello world", request["mfa_enrollment_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::IdentityToolkit::V2::StartMfaPhoneRequestInfo), request["phone_sign_in_info"]
      assert_equal :phone_sign_in_info, request.sign_in_info
      assert_equal "hello world", request["tenant_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, start_mfa_sign_in_client_stub do
      # Create client
      client = ::Google::Cloud::IdentityToolkit::V2::AuthenticationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.start_mfa_sign_in({ mfa_pending_credential: mfa_pending_credential, mfa_enrollment_id: mfa_enrollment_id, phone_sign_in_info: phone_sign_in_info, tenant_id: tenant_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.start_mfa_sign_in mfa_pending_credential: mfa_pending_credential, mfa_enrollment_id: mfa_enrollment_id, phone_sign_in_info: phone_sign_in_info, tenant_id: tenant_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.start_mfa_sign_in ::Google::Cloud::IdentityToolkit::V2::StartMfaSignInRequest.new(mfa_pending_credential: mfa_pending_credential, mfa_enrollment_id: mfa_enrollment_id, phone_sign_in_info: phone_sign_in_info, tenant_id: tenant_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.start_mfa_sign_in({ mfa_pending_credential: mfa_pending_credential, mfa_enrollment_id: mfa_enrollment_id, phone_sign_in_info: phone_sign_in_info, tenant_id: tenant_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.start_mfa_sign_in(::Google::Cloud::IdentityToolkit::V2::StartMfaSignInRequest.new(mfa_pending_credential: mfa_pending_credential, mfa_enrollment_id: mfa_enrollment_id, phone_sign_in_info: phone_sign_in_info, tenant_id: tenant_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, start_mfa_sign_in_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::IdentityToolkit::V2::AuthenticationService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::IdentityToolkit::V2::AuthenticationService::Client::Configuration, config
  end
end
