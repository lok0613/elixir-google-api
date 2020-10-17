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

defmodule GoogleApi.Poly.V1.Model.PresentationParams do
  @moduledoc """
  Hints for displaying the asset, based on information available when the asset was uploaded.

  ## Attributes

  *   `backgroundColor` (*type:* `String.t`, *default:* `nil`) - A background color which could be used for displaying the 3D asset in a 'thumbnail' or 'palette' style view. Authors have the option to set this background color when publishing or editing their asset. This is represented as a six-digit hexademical triplet specifying the RGB components of the background color, e.g. #FF0000 for Red.
  *   `colorSpace` (*type:* `String.t`, *default:* `nil`) - The materials' diffuse/albedo color. This does not apply to vertex colors or texture maps.
  *   `orientingRotation` (*type:* `GoogleApi.Poly.V1.Model.Quaternion.t`, *default:* `nil`) - A rotation that should be applied to the object root to make it upright. More precisely, this quaternion transforms from "object space" (the space in which the object is defined) to "presentation space", a coordinate system where +Y is up, +X is right, -Z is forward. For example, if the object is the Eiffel Tower, in its local coordinate system the object might be laid out such that the base of the tower is on the YZ plane and the tip of the tower is towards positive X. In this case this quaternion would specify a rotation (of 90 degrees about the Z axis) such that in the presentation space the base of the tower is aligned with the XZ plane, and the tip of the tower lies towards +Y. This rotation is unrelated to the object's pose in the web preview, which is just a camera position setting and is *not* reflected in this rotation. Please note: this is applicable only to the gLTF.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backgroundColor => String.t(),
          :colorSpace => String.t(),
          :orientingRotation => GoogleApi.Poly.V1.Model.Quaternion.t()
        }

  field(:backgroundColor)
  field(:colorSpace)
  field(:orientingRotation, as: GoogleApi.Poly.V1.Model.Quaternion)
end

defimpl Poison.Decoder, for: GoogleApi.Poly.V1.Model.PresentationParams do
  def decode(value, options) do
    GoogleApi.Poly.V1.Model.PresentationParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Poly.V1.Model.PresentationParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
