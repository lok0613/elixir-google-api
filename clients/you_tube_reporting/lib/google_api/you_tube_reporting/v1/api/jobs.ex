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

defmodule GoogleApi.YouTubeReporting.V1.Api.Jobs do
  @moduledoc """
  API calls for all endpoints tagged `Jobs`.
  """

  alias GoogleApi.YouTubeReporting.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Creates a job and returns it.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTubeReporting.V1.Connection.t`) - Connection to server
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
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - The content owner's external ID on which behalf the user is acting on. If
          not set, the user is acting for himself (his own channel).
      *   `:body` (*type:* `GoogleApi.YouTubeReporting.V1.Model.Job.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTubeReporting.V1.Model.Job{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtubereporting_jobs_create(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTubeReporting.V1.Model.Job.t()} | {:error, Tesla.Env.t()}
  def youtubereporting_jobs_create(connection, optional_params \\ [], opts \\ []) do
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
      :onBehalfOfContentOwner => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/jobs", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeReporting.V1.Model.Job{}])
  end

  @doc """
  Deletes a job.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTubeReporting.V1.Connection.t`) - Connection to server
  *   `job_id` (*type:* `String.t`) - The ID of the job to delete.
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
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - The content owner's external ID on which behalf the user is acting on. If
          not set, the user is acting for himself (his own channel).
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTubeReporting.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtubereporting_jobs_delete(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTubeReporting.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def youtubereporting_jobs_delete(connection, job_id, optional_params \\ [], opts \\ []) do
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
      :onBehalfOfContentOwner => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/jobs/{jobId}", %{
        "jobId" => URI.encode(job_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeReporting.V1.Model.Empty{}])
  end

  @doc """
  Gets a job.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTubeReporting.V1.Connection.t`) - Connection to server
  *   `job_id` (*type:* `String.t`) - The ID of the job to retrieve.
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
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - The content owner's external ID on which behalf the user is acting on. If
          not set, the user is acting for himself (his own channel).
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTubeReporting.V1.Model.Job{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtubereporting_jobs_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTubeReporting.V1.Model.Job.t()} | {:error, Tesla.Env.t()}
  def youtubereporting_jobs_get(connection, job_id, optional_params \\ [], opts \\ []) do
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
      :onBehalfOfContentOwner => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/jobs/{jobId}", %{
        "jobId" => URI.encode(job_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeReporting.V1.Model.Job{}])
  end

  @doc """
  Lists jobs.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTubeReporting.V1.Connection.t`) - Connection to server
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
      *   `:includeSystemManaged` (*type:* `boolean()`) - If set to true, also system-managed jobs will be returned; otherwise only
          user-created jobs will be returned. System-managed jobs can neither be
          modified nor deleted.
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - The content owner's external ID on which behalf the user is acting on. If
          not set, the user is acting for himself (his own channel).
      *   `:pageSize` (*type:* `integer()`) - Requested page size. Server may return fewer jobs than requested.
          If unspecified, server will pick an appropriate default.
      *   `:pageToken` (*type:* `String.t`) - A token identifying a page of results the server should return. Typically,
          this is the value of
          ListReportTypesResponse.next_page_token
          returned in response to the previous call to the `ListJobs` method.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTubeReporting.V1.Model.ListJobsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtubereporting_jobs_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTubeReporting.V1.Model.ListJobsResponse.t()}
          | {:error, Tesla.Env.t()}
  def youtubereporting_jobs_list(connection, optional_params \\ [], opts \\ []) do
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
      :includeSystemManaged => :query,
      :onBehalfOfContentOwner => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/jobs", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeReporting.V1.Model.ListJobsResponse{}])
  end

  @doc """
  Gets the metadata of a specific report.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTubeReporting.V1.Connection.t`) - Connection to server
  *   `job_id` (*type:* `String.t`) - The ID of the job.
  *   `report_id` (*type:* `String.t`) - The ID of the report to retrieve.
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
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - The content owner's external ID on which behalf the user is acting on. If
          not set, the user is acting for himself (his own channel).
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTubeReporting.V1.Model.Report{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtubereporting_jobs_reports_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.YouTubeReporting.V1.Model.Report.t()} | {:error, Tesla.Env.t()}
  def youtubereporting_jobs_reports_get(
        connection,
        job_id,
        report_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :onBehalfOfContentOwner => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/jobs/{jobId}/reports/{reportId}", %{
        "jobId" => URI.encode(job_id, &URI.char_unreserved?/1),
        "reportId" => URI.encode(report_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeReporting.V1.Model.Report{}])
  end

  @doc """
  Lists reports created by a specific job.
  Returns NOT_FOUND if the job does not exist.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTubeReporting.V1.Connection.t`) - Connection to server
  *   `job_id` (*type:* `String.t`) - The ID of the job.
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
      *   `:createdAfter` (*type:* `DateTime.t`) - If set, only reports created after the specified date/time are returned.
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - The content owner's external ID on which behalf the user is acting on. If
          not set, the user is acting for himself (his own channel).
      *   `:pageSize` (*type:* `integer()`) - Requested page size. Server may return fewer report types than requested.
          If unspecified, server will pick an appropriate default.
      *   `:pageToken` (*type:* `String.t`) - A token identifying a page of results the server should return. Typically,
          this is the value of
          ListReportsResponse.next_page_token
          returned in response to the previous call to the `ListReports` method.
      *   `:startTimeAtOrAfter` (*type:* `DateTime.t`) - If set, only reports whose start time is greater than or equal the
          specified date/time are returned.
      *   `:startTimeBefore` (*type:* `DateTime.t`) - If set, only reports whose start time is smaller than the specified
          date/time are returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTubeReporting.V1.Model.ListReportsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtubereporting_jobs_reports_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTubeReporting.V1.Model.ListReportsResponse.t()}
          | {:error, Tesla.Env.t()}
  def youtubereporting_jobs_reports_list(connection, job_id, optional_params \\ [], opts \\ []) do
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
      :createdAfter => :query,
      :onBehalfOfContentOwner => :query,
      :pageSize => :query,
      :pageToken => :query,
      :startTimeAtOrAfter => :query,
      :startTimeBefore => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/jobs/{jobId}/reports", %{
        "jobId" => URI.encode(job_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.YouTubeReporting.V1.Model.ListReportsResponse{}]
    )
  end
end
