# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudRun.V1alpha1.Model.TriggerStatus do
  @moduledoc """
  TriggerStatus represents the current state of a Trigger.

  ## Attributes

  *   `conditions` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.TriggerCondition.t)`, *default:* `nil`) - Array of observed TriggerConditions, indicating the current state of the Trigger.
  *   `observedGeneration` (*type:* `integer()`, *default:* `nil`) - ObservedGeneration is the 'Generation' of the Trigger that was last processed by the controller.
  *   `subscriberUri` (*type:* `String.t`, *default:* `nil`) - SubscriberURI is the resolved URI of the receiver for this Trigger.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditions => list(GoogleApi.CloudRun.V1alpha1.Model.TriggerCondition.t()),
          :observedGeneration => integer(),
          :subscriberUri => String.t()
        }

  field(:conditions, as: GoogleApi.CloudRun.V1alpha1.Model.TriggerCondition, type: :list)
  field(:observedGeneration)
  field(:subscriberUri)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.TriggerStatus do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.TriggerStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.TriggerStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
