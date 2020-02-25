# Copyright 2020 Google LLC
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

# AUTO GENERATED BY GAPIC

require "simplecov"
require "minitest/autorun"
require "minitest/spec"

require "google/cloud/video_intelligence"

describe "VideoIntelligenceServiceSmokeTest v1p2beta1" do
  it "runs one smoke test with annotate_video" do

    video_intelligence_client = Google::Cloud::VideoIntelligence.new(version: :v1p2beta1)
    input_uri = "gs://cloud-samples-data/video/cat.mp4"
    features_element = :LABEL_DETECTION
    features = [features_element]

    # Register a callback during the method call.
    operation = video_intelligence_client.annotate_video(input_uri: input_uri, features: features) do |op|
      raise op.results.message if op.error?
      op_results = op.results
      # Process the results.

      metadata = op.metadata
      # Process the metadata.
    end

    # Or use the return value to register a callback.
    operation.on_done do |op|
      raise op.results.message if op.error?
      op_results = op.results
      # Process the results.

      metadata = op.metadata
      # Process the metadata.
    end

    # Manually reload the operation.
    operation.reload!

    # Or block until the operation completes, triggering callbacks on
    # completion.
    operation.wait_until_done!
  end
end
