# frozen_string_literal: true

# Copyright 2022 Google LLC
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
require "google/cloud/dataplex"
require "gapic/common"
require "gapic/grpc"
require "gapic/rest"

class Google::Cloud::Dataplex::ClientConstructionMinitest < Minitest::Test
  def test_content_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataplex.content_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataplex::V1::ContentService::Client, client
    end
  end

  def test_content_service_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Dataplex.content_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Dataplex::V1::ContentService::Rest::Client, client
    end
  end

  def test_dataplex_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataplex.dataplex_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataplex::V1::DataplexService::Client, client
    end
  end

  def test_dataplex_service_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Dataplex.dataplex_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Dataplex::V1::DataplexService::Rest::Client, client
    end
  end

  def test_data_taxonomy_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataplex.data_taxonomy_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataplex::V1::DataTaxonomyService::Client, client
    end
  end

  def test_data_taxonomy_service_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Dataplex.data_taxonomy_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Dataplex::V1::DataTaxonomyService::Rest::Client, client
    end
  end

  def test_data_scan_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataplex.data_scan_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataplex::V1::DataScanService::Client, client
    end
  end

  def test_data_scan_service_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Dataplex.data_scan_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Dataplex::V1::DataScanService::Rest::Client, client
    end
  end

  def test_metadata_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataplex.metadata_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataplex::V1::MetadataService::Client, client
    end
  end

  def test_metadata_service_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Dataplex.metadata_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Dataplex::V1::MetadataService::Rest::Client, client
    end
  end
end
