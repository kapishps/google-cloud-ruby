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


module Google
  module Cloud
    module SecurityCenter
      module V1
        # An EffectiveSecurityHealthAnalyticsCustomModule is the representation of
        # a Security Health Analytics custom module at a specified level of the
        # resource hierarchy: organization, folder, or project. If a custom module is
        # inherited from a parent organization or folder, the value of the
        # `enablementState` property in EffectiveSecurityHealthAnalyticsCustomModule is
        # set to the value that is effective in the parent, instead of  `INHERITED`.
        # For example, if the module is enabled in a parent organization or folder, the
        # effective enablement_state for the module in all child folders or projects is
        # also `enabled`. EffectiveSecurityHealthAnalyticsCustomModule is read-only.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the custom module.
        #     Its format is
        #     "organizations/\\{organization}/securityHealthAnalyticsSettings/effectiveCustomModules/\\{customModule}",
        #     or
        #     "folders/\\{folder}/securityHealthAnalyticsSettings/effectiveCustomModules/\\{customModule}",
        #     or
        #     "projects/\\{project}/securityHealthAnalyticsSettings/effectiveCustomModules/\\{customModule}"
        # @!attribute [r] custom_config
        #   @return [::Google::Cloud::SecurityCenter::V1::CustomConfig]
        #     Output only. The user-specified configuration for the module.
        # @!attribute [r] enablement_state
        #   @return [::Google::Cloud::SecurityCenter::V1::EffectiveSecurityHealthAnalyticsCustomModule::EnablementState]
        #     Output only. The effective state of enablement for the module at the given
        #     level of the hierarchy.
        # @!attribute [r] display_name
        #   @return [::String]
        #     Output only. The display name for the custom module. The name must be
        #     between 1 and 128 characters, start with a lowercase letter, and contain
        #     alphanumeric characters or underscores only.
        class EffectiveSecurityHealthAnalyticsCustomModule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The enablement state of the module.
          module EnablementState
            # Unspecified enablement state.
            ENABLEMENT_STATE_UNSPECIFIED = 0

            # The module is enabled at the given level.
            ENABLED = 1

            # The module is disabled at the given level.
            DISABLED = 2
          end
        end
      end
    end
  end
end