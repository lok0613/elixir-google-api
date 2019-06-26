# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CloudRun.V1alpha1.Model.ListAuthorizedDomainsResponse do
  @moduledoc """
  A list of Authorized Domains.

  ## Attributes

  *   `domains` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.AuthorizedDomain.t)`, *default:* `nil`) - The authorized domains belonging to the user.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token for fetching the next page of results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :domains => list(GoogleApi.CloudRun.V1alpha1.Model.AuthorizedDomain.t()),
          :nextPageToken => String.t()
        }

  field(:domains, as: GoogleApi.CloudRun.V1alpha1.Model.AuthorizedDomain, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ListAuthorizedDomainsResponse do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ListAuthorizedDomainsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ListAuthorizedDomainsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
