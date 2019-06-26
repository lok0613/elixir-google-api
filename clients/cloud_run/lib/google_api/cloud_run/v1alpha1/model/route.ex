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

defmodule GoogleApi.CloudRun.V1alpha1.Model.Route do
  @moduledoc """
  Route is responsible for configuring ingress over a collection of Revisions.
  Some of the Revisions a Route distributes traffic over may be specified by
  referencing the Configuration responsible for creating them; in these cases
  the Route is additionally responsible for monitoring the Configuration for
  "latest ready" revision changes, and smoothly rolling out latest revisions.
  See also:
  https://github.com/knative/serving/blob/master/docs/spec/overview.md#route

  Cloud Run currently supports referencing a single Configuration to
  automatically deploy the "latest ready" Revision from that Configuration.

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - The API version for this call such as "v1alpha1".
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of this resource, in this case always "Route".
  *   `metadata` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta.t`, *default:* `nil`) - Metadata associated with this Route, including name, namespace, labels,
      and annotations.
  *   `spec` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.RouteSpec.t`, *default:* `nil`) - Spec holds the desired state of the Route (from the client).
  *   `status` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.RouteStatus.t`, *default:* `nil`) - Status communicates the observed state of the Route (from the controller).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t(),
          :kind => String.t(),
          :metadata => GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta.t(),
          :spec => GoogleApi.CloudRun.V1alpha1.Model.RouteSpec.t(),
          :status => GoogleApi.CloudRun.V1alpha1.Model.RouteStatus.t()
        }

  field(:apiVersion)
  field(:kind)
  field(:metadata, as: GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta)
  field(:spec, as: GoogleApi.CloudRun.V1alpha1.Model.RouteSpec)
  field(:status, as: GoogleApi.CloudRun.V1alpha1.Model.RouteStatus)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.Route do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.Route.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.Route do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
