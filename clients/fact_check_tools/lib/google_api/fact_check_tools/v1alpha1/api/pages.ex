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

defmodule GoogleApi.FactCheckTools.V1alpha1.Api.Pages do
  @moduledoc """
  API calls for all endpoints tagged `Pages`.
  """

  alias GoogleApi.FactCheckTools.V1alpha1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Create `ClaimReview` markup on a page.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FactCheckTools.V1alpha1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
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
      *   `:body` (*type:* `GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage{}}` on success
  *   `{:error, info}` on failure
  """
  @spec factchecktools_pages_create(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok,
           GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def factchecktools_pages_create(connection, optional_params \\ [], opts \\ []) do
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1alpha1/pages", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage{}
        ]
    )
  end

  @doc """
  Delete all `ClaimReview` markup on a page.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FactCheckTools.V1alpha1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The name of the resource to delete, in the form of `pages/{page_id}`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleProtobufEmpty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec factchecktools_pages_delete(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.FactCheckTools.V1alpha1.Model.GoogleProtobufEmpty.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def factchecktools_pages_delete(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1alpha1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleProtobufEmpty{}]
    )
  end

  @doc """
  Get all `ClaimReview` markup on a page.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FactCheckTools.V1alpha1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The name of the resource to get, in the form of `pages/{page_id}`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage{}}` on success
  *   `{:error, info}` on failure
  """
  @spec factchecktools_pages_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok,
           GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def factchecktools_pages_get(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage{}
        ]
    )
  end

  @doc """
  List the `ClaimReview` markup pages for a specific URL or for an organization.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FactCheckTools.V1alpha1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
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
      *   `:offset` (*type:* `integer()`) - An integer that specifies the current offset (that is, starting result location) in search results. This field is only considered if `page_token` is unset, and if the request is not for a specific URL. For example, 0 means to return results starting from the first matching result, and 10 means to return from the 11th result.
      *   `:organization` (*type:* `String.t`) - The organization for which we want to fetch markups for. For instance, "site.com". Cannot be specified along with an URL.
      *   `:pageSize` (*type:* `integer()`) - The pagination size. We will return up to that many results. Defaults to 10 if not set. Has no effect if a URL is requested.
      *   `:pageToken` (*type:* `String.t`) - The pagination token. You may provide the `next_page_token` returned from a previous List request, if any, in order to get the next page. All other fields must have the same values as in the previous request.
      *   `:url` (*type:* `String.t`) - The URL from which to get `ClaimReview` markup. There will be at most one result. If markup is associated with a more canonical version of the URL provided, we will return that URL instead. Cannot be specified along with an organization.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec factchecktools_pages_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok,
           GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def factchecktools_pages_list(connection, optional_params \\ [], opts \\ []) do
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
      :offset => :query,
      :organization => :query,
      :pageSize => :query,
      :pageToken => :query,
      :url => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha1/pages", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse{}
        ]
    )
  end

  @doc """
  Update for all `ClaimReview` markup on a page Note that this is a full update. To retain the existing `ClaimReview` markup on a page, first perform a Get operation, then modify the returned markup, and finally call Update with the entire `ClaimReview` markup as the body.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FactCheckTools.V1alpha1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The name of this `ClaimReview` markup page resource, in the form of `pages/{page_id}`. Except for update requests, this field is output-only and should not be set by the user.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
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
      *   `:body` (*type:* `GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage{}}` on success
  *   `{:error, info}` on failure
  """
  @spec factchecktools_pages_update(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok,
           GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def factchecktools_pages_update(connection, name, optional_params \\ [], opts \\ []) do
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v1alpha1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage{}
        ]
    )
  end
end
