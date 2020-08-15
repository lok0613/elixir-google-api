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

defmodule GoogleApi.OSConfig.V1.Model.FileRemote do
  @moduledoc """
  Specifies a file available via some URI.

  ## Attributes

  *   `sha256Checksum` (*type:* `String.t`, *default:* `nil`) - SHA256 checksum of the remote file.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI from which to fetch the object. It should contain both the protocol and path following the format {protocol}://{location}.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sha256Checksum => String.t(),
          :uri => String.t()
        }

  field(:sha256Checksum)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.FileRemote do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.FileRemote.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.FileRemote do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
