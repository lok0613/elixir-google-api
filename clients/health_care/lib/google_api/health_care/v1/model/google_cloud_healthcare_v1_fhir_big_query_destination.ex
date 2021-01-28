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

defmodule GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirBigQueryDestination do
  @moduledoc """
  The configuration for exporting to BigQuery.

  ## Attributes

  *   `datasetUri` (*type:* `String.t`, *default:* `nil`) - BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://projectId.bqDatasetId`.
  *   `force` (*type:* `boolean()`, *default:* `nil`) - If this flag is `TRUE`, all tables are deleted from the dataset before the new exported tables are written. If the flag is not set and the destination dataset contains tables, the export call returns an error. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  *   `schemaConfig` (*type:* `GoogleApi.HealthCare.V1.Model.SchemaConfig.t`, *default:* `nil`) - The configuration for the exported BigQuery schema.
  *   `writeDisposition` (*type:* `String.t`, *default:* `nil`) - Determines whether existing tables in the destination dataset are overwritten or appended to. If a write_disposition is specified, the `force` parameter is ignored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datasetUri => String.t(),
          :force => boolean(),
          :schemaConfig => GoogleApi.HealthCare.V1.Model.SchemaConfig.t(),
          :writeDisposition => String.t()
        }

  field(:datasetUri)
  field(:force)
  field(:schemaConfig, as: GoogleApi.HealthCare.V1.Model.SchemaConfig)
  field(:writeDisposition)
end

defimpl Poison.Decoder,
  for: GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirBigQueryDestination do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirBigQueryDestination.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirBigQueryDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
