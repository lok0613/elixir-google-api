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

defmodule GoogleApi.ToolResults.V1beta3.Model.RegionProto do
  @moduledoc """
  A rectangular region.

  ## Attributes

  *   `heightPx` (*type:* `integer()`, *default:* `nil`) - The height, in pixels. Always set.
  *   `leftPx` (*type:* `integer()`, *default:* `nil`) - The left side of the rectangle, in pixels. Always set.
  *   `topPx` (*type:* `integer()`, *default:* `nil`) - The top of the rectangle, in pixels. Always set.
  *   `widthPx` (*type:* `integer()`, *default:* `nil`) - The width, in pixels. Always set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :heightPx => integer(),
          :leftPx => integer(),
          :topPx => integer(),
          :widthPx => integer()
        }

  field(:heightPx)
  field(:leftPx)
  field(:topPx)
  field(:widthPx)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.RegionProto do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.RegionProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.RegionProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
