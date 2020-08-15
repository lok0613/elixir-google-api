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

defmodule GoogleApi.OSConfig.V1.Model.ExtractArchiveResource do
  @moduledoc """
  A resource that extracts an archive

  ## Attributes

  *   `creates` (*type:* `String.t`, *default:* `nil`) - Local file path that signals this resource is in the desired state. The absence of this file will indicate whether the archive needs to be extracted.
  *   `destination` (*type:* `String.t`, *default:* `nil`) - Directory to extract archive to.
  *   `overwrite` (*type:* `boolean()`, *default:* `nil`) - Whether to overwrite existing files during extraction. If this is set to true, any existing files in the destination location will be overwritten by the extraction.
  *   `source` (*type:* `GoogleApi.OSConfig.V1.Model.File.t`, *default:* `nil`) - The source archive to extract.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the archive to extract.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creates => String.t(),
          :destination => String.t(),
          :overwrite => boolean(),
          :source => GoogleApi.OSConfig.V1.Model.File.t(),
          :type => String.t()
        }

  field(:creates)
  field(:destination)
  field(:overwrite)
  field(:source, as: GoogleApi.OSConfig.V1.Model.File)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.ExtractArchiveResource do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.ExtractArchiveResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.ExtractArchiveResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
