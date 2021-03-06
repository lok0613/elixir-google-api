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

defmodule GoogleApi.Games.V1.Model.PlayerLeaderboardScore do
  @moduledoc """
  A player leaderboard score object.

  ## Attributes

  *   `friendsRank` (*type:* `GoogleApi.Games.V1.Model.LeaderboardScoreRank.t`, *default:* `nil`) - The rank of the score in the friends collection for this leaderboard.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed string `games#playerLeaderboardScore`.
  *   `leaderboard_id` (*type:* `String.t`, *default:* `nil`) - The ID of the leaderboard this score is in.
  *   `publicRank` (*type:* `GoogleApi.Games.V1.Model.LeaderboardScoreRank.t`, *default:* `nil`) - The public rank of the score in this leaderboard. This object will not be present if the user is not sharing their scores publicly.
  *   `scoreString` (*type:* `String.t`, *default:* `nil`) - The formatted value of this score.
  *   `scoreTag` (*type:* `String.t`, *default:* `nil`) - Additional information about the score. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
  *   `scoreValue` (*type:* `String.t`, *default:* `nil`) - The numerical value of this score.
  *   `socialRank` (*type:* `GoogleApi.Games.V1.Model.LeaderboardScoreRank.t`, *default:* `nil`) - The social rank of the score in this leaderboard.
  *   `timeSpan` (*type:* `String.t`, *default:* `nil`) - The time span of this score.
  *   `writeTimestamp` (*type:* `String.t`, *default:* `nil`) - The timestamp at which this score was recorded, in milliseconds since the epoch in UTC.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :friendsRank => GoogleApi.Games.V1.Model.LeaderboardScoreRank.t(),
          :kind => String.t(),
          :leaderboard_id => String.t(),
          :publicRank => GoogleApi.Games.V1.Model.LeaderboardScoreRank.t(),
          :scoreString => String.t(),
          :scoreTag => String.t(),
          :scoreValue => String.t(),
          :socialRank => GoogleApi.Games.V1.Model.LeaderboardScoreRank.t(),
          :timeSpan => String.t(),
          :writeTimestamp => String.t()
        }

  field(:friendsRank, as: GoogleApi.Games.V1.Model.LeaderboardScoreRank)
  field(:kind)
  field(:leaderboard_id)
  field(:publicRank, as: GoogleApi.Games.V1.Model.LeaderboardScoreRank)
  field(:scoreString)
  field(:scoreTag)
  field(:scoreValue)
  field(:socialRank, as: GoogleApi.Games.V1.Model.LeaderboardScoreRank)
  field(:timeSpan)
  field(:writeTimestamp)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.PlayerLeaderboardScore do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.PlayerLeaderboardScore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.PlayerLeaderboardScore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
