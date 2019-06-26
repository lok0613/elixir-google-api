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

defmodule GoogleApi.CloudBilling.V1.Model.Sku do
  @moduledoc """
  Encapsulates a single SKU in Google Cloud Platform

  ## Attributes

  *   `category` (*type:* `GoogleApi.CloudBilling.V1.Model.Category.t`, *default:* `nil`) - The category hierarchy of this SKU, purely for organizational purpose.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A human readable description of the SKU, has a maximum length of 256
      characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name for the SKU.
      Example: "services/DA34-426B-A397/skus/AA95-CD31-42FE"
  *   `pricingInfo` (*type:* `list(GoogleApi.CloudBilling.V1.Model.PricingInfo.t)`, *default:* `nil`) - A timeline of pricing info for this SKU in chronological order.
  *   `serviceProviderName` (*type:* `String.t`, *default:* `nil`) - Identifies the service provider.
      This is 'Google' for first party services in Google Cloud Platform.
  *   `serviceRegions` (*type:* `list(String.t)`, *default:* `nil`) - List of service regions this SKU is offered at.
      Example: "asia-east1"
      Service regions can be found at https://cloud.google.com/about/locations/
  *   `skuId` (*type:* `String.t`, *default:* `nil`) - The identifier for the SKU.
      Example: "AA95-CD31-42FE"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :category => GoogleApi.CloudBilling.V1.Model.Category.t(),
          :description => String.t(),
          :name => String.t(),
          :pricingInfo => list(GoogleApi.CloudBilling.V1.Model.PricingInfo.t()),
          :serviceProviderName => String.t(),
          :serviceRegions => list(String.t()),
          :skuId => String.t()
        }

  field(:category, as: GoogleApi.CloudBilling.V1.Model.Category)
  field(:description)
  field(:name)
  field(:pricingInfo, as: GoogleApi.CloudBilling.V1.Model.PricingInfo, type: :list)
  field(:serviceProviderName)
  field(:serviceRegions, type: :list)
  field(:skuId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBilling.V1.Model.Sku do
  def decode(value, options) do
    GoogleApi.CloudBilling.V1.Model.Sku.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBilling.V1.Model.Sku do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
