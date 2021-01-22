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

defmodule GoogleApi.CloudFunctions.V1.Model.OperationMetadataV1 do
  @moduledoc """
  Metadata describing an Operation

  ## Attributes

  *   `buildId` (*type:* `String.t`, *default:* `nil`) - The Cloud Build ID of the function created or updated by an API call. This field is only populated for Create and Update operations.
  *   `request` (*type:* `map()`, *default:* `nil`) - The original request that started the operation.
  *   `sourceToken` (*type:* `String.t`, *default:* `nil`) - An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  *   `target` (*type:* `String.t`, *default:* `nil`) - Target of the operation - for example projects/project-1/locations/region-1/functions/function-1
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of operation.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The last update timestamp of the operation.
  *   `versionId` (*type:* `String.t`, *default:* `nil`) - Version id of the function created or updated by an API call. This field is only populated for Create and Update operations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buildId => String.t(),
          :request => map(),
          :sourceToken => String.t(),
          :target => String.t(),
          :type => String.t(),
          :updateTime => DateTime.t(),
          :versionId => String.t()
        }

  field(:buildId)
  field(:request, type: :map)
  field(:sourceToken)
  field(:target)
  field(:type)
  field(:updateTime, as: DateTime)
  field(:versionId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudFunctions.V1.Model.OperationMetadataV1 do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V1.Model.OperationMetadataV1.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudFunctions.V1.Model.OperationMetadataV1 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
