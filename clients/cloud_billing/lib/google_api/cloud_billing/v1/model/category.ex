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

defmodule GoogleApi.CloudBilling.V1.Model.Category do
  @moduledoc """
  Represents the category hierarchy of a SKU.

  ## Attributes

  *   `resourceFamily` (*type:* `String.t`, *default:* `nil`) - The type of product the SKU refers to.
      Example: "Compute", "Storage", "Network", "ApplicationServices" etc.
  *   `resourceGroup` (*type:* `String.t`, *default:* `nil`) - A group classification for related SKUs.
      Example: "RAM", "GPU", "Prediction", "Ops", "GoogleEgress" etc.
  *   `serviceDisplayName` (*type:* `String.t`, *default:* `nil`) - The display name of the service this SKU belongs to.
  *   `usageType` (*type:* `String.t`, *default:* `nil`) - Represents how the SKU is consumed.
      Example: "OnDemand", "Preemptible", "Commit1Mo", "Commit1Yr" etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resourceFamily => String.t(),
          :resourceGroup => String.t(),
          :serviceDisplayName => String.t(),
          :usageType => String.t()
        }

  field(:resourceFamily)
  field(:resourceGroup)
  field(:serviceDisplayName)
  field(:usageType)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBilling.V1.Model.Category do
  def decode(value, options) do
    GoogleApi.CloudBilling.V1.Model.Category.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBilling.V1.Model.Category do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
