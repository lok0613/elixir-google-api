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

defmodule GoogleApi.Vision.V1.Model.OperationMetadata do
  @moduledoc """
  Contains metadata for the BatchAnnotateImages operation.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the batch request was received.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Current state of the batch operation.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the operation result was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :state => String.t(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.OperationMetadata do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.OperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.OperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
