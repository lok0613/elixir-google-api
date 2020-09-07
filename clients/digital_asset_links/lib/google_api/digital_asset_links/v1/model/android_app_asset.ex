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

defmodule GoogleApi.DigitalAssetLinks.V1.Model.AndroidAppAsset do
  @moduledoc """
  Describes an android app asset.

  ## Attributes

  *   `certificate` (*type:* `GoogleApi.DigitalAssetLinks.V1.Model.CertificateInfo.t`, *default:* `nil`) - Because there is no global enforcement of package name uniqueness, we also require a signing certificate, which in combination with the package name uniquely identifies an app. Some apps' signing keys are rotated, so they may be signed by different keys over time. We treat these as distinct assets, since we use (package name, cert) as the unique ID. This should not normally pose any problems as both versions of the app will make the same or similar statements. Other assets making statements about the app will have to be updated when a key is rotated, however. (Note that the syntaxes for publishing and querying for statements contain syntactic sugar to easily let you specify apps that are known by multiple certificates.) REQUIRED
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the package name `com.google.android.apps.maps`. REQUIRED
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificate => GoogleApi.DigitalAssetLinks.V1.Model.CertificateInfo.t(),
          :packageName => String.t()
        }

  field(:certificate, as: GoogleApi.DigitalAssetLinks.V1.Model.CertificateInfo)
  field(:packageName)
end

defimpl Poison.Decoder, for: GoogleApi.DigitalAssetLinks.V1.Model.AndroidAppAsset do
  def decode(value, options) do
    GoogleApi.DigitalAssetLinks.V1.Model.AndroidAppAsset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DigitalAssetLinks.V1.Model.AndroidAppAsset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
