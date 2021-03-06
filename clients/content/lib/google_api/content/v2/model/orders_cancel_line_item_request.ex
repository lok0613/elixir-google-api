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

defmodule GoogleApi.Content.V2.Model.OrdersCancelLineItemRequest do
  @moduledoc """


  ## Attributes

  *   `amount` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - Deprecated. Please use amountPretax and amountTax instead.
  *   `amountPretax` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - Amount to refund for the cancelation. Optional. If not set, Google will calculate the default based on the price and tax of the items involved. The amount must not be larger than the net amount left on the order.
  *   `amountTax` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - Tax amount that corresponds to cancellation amount in amountPretax. Optional, but if filled, then amountPretax must be set. Calculated automatically if not provided.
  *   `lineItemId` (*type:* `String.t`, *default:* `nil`) - The ID of the line item to cancel. Either lineItemId or productId is required.
  *   `operationId` (*type:* `String.t`, *default:* `nil`) - The ID of the operation. Unique across all operations for a given order.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product to cancel. This is the REST ID used in the products service. Either lineItemId or productId is required.
  *   `quantity` (*type:* `integer()`, *default:* `nil`) - The quantity to cancel.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - The reason for the cancellation. Acceptable values are: - "`customerInitiatedCancel`" - "`invalidCoupon`" - "`malformedShippingAddress`" - "`noInventory`" - "`other`" - "`priceError`" - "`shippingPriceError`" - "`taxError`" - "`undeliverableShippingAddress`" - "`unsupportedPoBoxAddress`" 
  *   `reasonText` (*type:* `String.t`, *default:* `nil`) - The explanation of the reason.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amount => GoogleApi.Content.V2.Model.Price.t(),
          :amountPretax => GoogleApi.Content.V2.Model.Price.t(),
          :amountTax => GoogleApi.Content.V2.Model.Price.t(),
          :lineItemId => String.t(),
          :operationId => String.t(),
          :productId => String.t(),
          :quantity => integer(),
          :reason => String.t(),
          :reasonText => String.t()
        }

  field(:amount, as: GoogleApi.Content.V2.Model.Price)
  field(:amountPretax, as: GoogleApi.Content.V2.Model.Price)
  field(:amountTax, as: GoogleApi.Content.V2.Model.Price)
  field(:lineItemId)
  field(:operationId)
  field(:productId)
  field(:quantity)
  field(:reason)
  field(:reasonText)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrdersCancelLineItemRequest do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrdersCancelLineItemRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrdersCancelLineItemRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
