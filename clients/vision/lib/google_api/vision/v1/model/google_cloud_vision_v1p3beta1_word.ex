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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1Word do
  @moduledoc """
  A word representation.

  ## Attributes

  *   `boundingBox` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1BoundingPoly.t`, *default:* `nil`) - The bounding box for the word.
      The vertices are in the order of top-left, top-right, bottom-right,
      bottom-left. When a rotation of the bounding box is detected the rotation
      is represented as around the top-left corner as defined when the text is
      read in the 'natural' orientation.
      For example:
        * when the text is horizontal it might look like:
           0----1
           |    |
           3----2
        * when it's rotated 180 degrees around the top-left corner it becomes:
           2----3
           |    |
           1----0
        and the vertex order will still be (0, 1, 2, 3).
  *   `confidence` (*type:* `number()`, *default:* `nil`) - Confidence of the OCR results for the word. Range [0, 1].
  *   `property` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1TextAnnotationTextProperty.t`, *default:* `nil`) - Additional information detected for the word.
  *   `symbols` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1Symbol.t)`, *default:* `nil`) - List of symbols in the word.
      The order of the symbols follows the natural reading order.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingBox => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1BoundingPoly.t(),
          :confidence => number(),
          :property =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1TextAnnotationTextProperty.t(),
          :symbols => list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1Symbol.t())
        }

  field(:boundingBox, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1BoundingPoly)
  field(:confidence)

  field(
    :property,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
  )

  field(:symbols, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1Symbol, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1Word do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1Word.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1Word do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
