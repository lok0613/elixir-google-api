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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Version do
  @moduledoc """
  Represents an agent version.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time of this version. This field is read-only, i.e., it cannot
      be set by create and update methods.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The developer-provided description of this version.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier of this agent version.
      Format: `projects/<Project ID>/agent/versions/<Version ID>`.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Output only. The status of this version. This field is read-only and cannot be set by
      create and update methods.
  *   `versionNumber` (*type:* `integer()`, *default:* `nil`) - Output only. The sequential number of this version. This field is read-only which means
      it cannot be set by create and update methods.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :description => String.t(),
          :name => String.t(),
          :status => String.t(),
          :versionNumber => integer()
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:name)
  field(:status)
  field(:versionNumber)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Version do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Version.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Version do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end