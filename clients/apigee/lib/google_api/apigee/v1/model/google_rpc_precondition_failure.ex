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

defmodule GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailure do
  @moduledoc """
  Describes what preconditions have failed. For example, if an RPC failed because it required the Terms of Service to be acknowledged, it could list the terms of service violation in the PreconditionFailure message.

  ## Attributes

  *   `violations` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailureViolation.t)`, *default:* `nil`) - Describes all precondition violations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :violations => list(GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailureViolation.t())
        }

  field(:violations,
    as: GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailureViolation,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailure do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailure.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailure do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
