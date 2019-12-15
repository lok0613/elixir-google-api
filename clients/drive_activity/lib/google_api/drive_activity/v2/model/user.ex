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

defmodule GoogleApi.DriveActivity.V2.Model.User do
  @moduledoc """
  Information about an end user.

  ## Attributes

  *   `deletedUser` (*type:* `GoogleApi.DriveActivity.V2.Model.DeletedUser.t`, *default:* `nil`) - A user whose account has since been deleted.
  *   `knownUser` (*type:* `GoogleApi.DriveActivity.V2.Model.KnownUser.t`, *default:* `nil`) - A known user.
  *   `unknownUser` (*type:* `GoogleApi.DriveActivity.V2.Model.UnknownUser.t`, *default:* `nil`) - A user about whom nothing is currently known.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deletedUser => GoogleApi.DriveActivity.V2.Model.DeletedUser.t(),
          :knownUser => GoogleApi.DriveActivity.V2.Model.KnownUser.t(),
          :unknownUser => GoogleApi.DriveActivity.V2.Model.UnknownUser.t()
        }

  field(:deletedUser, as: GoogleApi.DriveActivity.V2.Model.DeletedUser)
  field(:knownUser, as: GoogleApi.DriveActivity.V2.Model.KnownUser)
  field(:unknownUser, as: GoogleApi.DriveActivity.V2.Model.UnknownUser)
end

defimpl Poison.Decoder, for: GoogleApi.DriveActivity.V2.Model.User do
  def decode(value, options) do
    GoogleApi.DriveActivity.V2.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DriveActivity.V2.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
