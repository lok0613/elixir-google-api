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

defmodule GoogleApi.CloudBilling.V1.Api.Services do
  @moduledoc """
  API calls for all endpoints tagged `Services`.
  """

  alias GoogleApi.CloudBilling.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Lists all public cloud services.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:pageSize` (*type:* `integer()`) - Requested page size. Defaults to 5000.
      *   `:pageToken` (*type:* `String.t`) - A token identifying a page of results to return. This should be a
          `next_page_token` value returned from a previous `ListServices`
          call. If unspecified, the first page of results is returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.ListServicesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_services_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.ListServicesResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudbilling_services_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/services", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.ListServicesResponse{}])
  end

  @doc """
  Lists all publicly available SKUs for a given cloud service.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - The name of the service.
      Example: "services/DA34-426B-A397"
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:currencyCode` (*type:* `String.t`) - The ISO 4217 currency code for the pricing info in the response proto.
          Will use the conversion rate as of start_time.
          Optional. If not specified USD will be used.
      *   `:endTime` (*type:* `DateTime.t`) - Optional exclusive end time of the time range for which the pricing
          versions will be returned. Timestamps in the future are not allowed.
          The time range has to be within a single calendar month in
          America/Los_Angeles timezone. Time range as a whole is optional. If not
          specified, the latest pricing will be returned (up to 12 hours old at
          most).
      *   `:pageSize` (*type:* `integer()`) - Requested page size. Defaults to 5000.
      *   `:pageToken` (*type:* `String.t`) - A token identifying a page of results to return. This should be a
          `next_page_token` value returned from a previous `ListSkus`
          call. If unspecified, the first page of results is returned.
      *   `:startTime` (*type:* `DateTime.t`) - Optional inclusive start time of the time range for which the pricing
          versions will be returned. Timestamps in the future are not allowed.
          The time range has to be within a single calendar month in
          America/Los_Angeles timezone. Time range as a whole is optional. If not
          specified, the latest pricing will be returned (up to 12 hours old at
          most).
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.ListSkusResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_services_skus_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.ListSkusResponse.t()} | {:error, Tesla.Env.t()}
  def cloudbilling_services_skus_list(connection, parent, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :currencyCode => :query,
      :endTime => :query,
      :pageSize => :query,
      :pageToken => :query,
      :startTime => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/skus", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.ListSkusResponse{}])
  end
end
