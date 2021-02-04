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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1IntentParameter do
  @moduledoc """
  Represents an intent parameter.

  ## Attributes

  *   `entityType` (*type:* `String.t`, *default:* `nil`) - Required. The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier of the parameter. This field is used by training phrases to annotate their parts.
  *   `isList` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the parameter represents a list of values.
  *   `redact` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityType => String.t(),
          :id => String.t(),
          :isList => boolean(),
          :redact => boolean()
        }

  field(:entityType)
  field(:id)
  field(:isList)
  field(:redact)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1IntentParameter do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1IntentParameter.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1IntentParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
