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

defmodule GoogleApi.FirebaseHosting.V1beta1.Model.ServingConfig do
  @moduledoc """
  The configuration for how incoming requests to a site should be routed and processed before serving content. The URL request paths are matched against the specified URL patterns in the configuration, then Hosting applies the applicable configuration according to a specific [priority order](https://firebase.google.com/docs/hosting/full-config#hosting_priority_order).

  ## Attributes

  *   `appAssociation` (*type:* `String.t`, *default:* `nil`) - How to handle well known App Association files.
  *   `cleanUrls` (*type:* `boolean()`, *default:* `nil`) - Defines whether to drop the file extension from uploaded files.
  *   `headers` (*type:* `list(GoogleApi.FirebaseHosting.V1beta1.Model.Header.t)`, *default:* `nil`) - An array of objects, where each object specifies a URL pattern that, if matched to the request URL path, triggers Hosting to apply the specified custom response headers.
  *   `i18n` (*type:* `GoogleApi.FirebaseHosting.V1beta1.Model.I18nConfig.t`, *default:* `nil`) - Optional. Defines i18n rewrite behavior.
  *   `redirects` (*type:* `list(GoogleApi.FirebaseHosting.V1beta1.Model.Redirect.t)`, *default:* `nil`) - An array of objects (called redirect rules), where each rule specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond with a redirect to the specified destination path.
  *   `rewrites` (*type:* `list(GoogleApi.FirebaseHosting.V1beta1.Model.Rewrite.t)`, *default:* `nil`) - An array of objects (called rewrite rules), where each rule specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond as if the service were given the specified destination URL.
  *   `trailingSlashBehavior` (*type:* `String.t`, *default:* `nil`) - Defines how to handle a trailing slash in the URL path.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appAssociation => String.t(),
          :cleanUrls => boolean(),
          :headers => list(GoogleApi.FirebaseHosting.V1beta1.Model.Header.t()),
          :i18n => GoogleApi.FirebaseHosting.V1beta1.Model.I18nConfig.t(),
          :redirects => list(GoogleApi.FirebaseHosting.V1beta1.Model.Redirect.t()),
          :rewrites => list(GoogleApi.FirebaseHosting.V1beta1.Model.Rewrite.t()),
          :trailingSlashBehavior => String.t()
        }

  field(:appAssociation)
  field(:cleanUrls)
  field(:headers, as: GoogleApi.FirebaseHosting.V1beta1.Model.Header, type: :list)
  field(:i18n, as: GoogleApi.FirebaseHosting.V1beta1.Model.I18nConfig)
  field(:redirects, as: GoogleApi.FirebaseHosting.V1beta1.Model.Redirect, type: :list)
  field(:rewrites, as: GoogleApi.FirebaseHosting.V1beta1.Model.Rewrite, type: :list)
  field(:trailingSlashBehavior)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.ServingConfig do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1beta1.Model.ServingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.ServingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
