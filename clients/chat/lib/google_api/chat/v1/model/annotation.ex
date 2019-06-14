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

defmodule GoogleApi.Chat.V1.Model.Annotation do
  @moduledoc """
  Annotations associated with the plain-text body of the message.

  Example plain-text message body:
  ```
  Hello @FooBot how are you!"
  ```

  The corresponding annotations metadata:
  ```
  "annotations":[{
  "type":"USER_MENTION",
  "startIndex":6,
  "length":7,
  "userMention": {
    "user": {
      "name":"users/107946847022116401880",
      "displayName":"FooBot",
      "avatarUrl":"https://goo.gl/aeDtrS",
      "type":"BOT"
    },
    "type":"MENTION"
   }
  }]
  ```

  ## Attributes

  - length (integer()): Length of the substring in the plain-text message body this annotation
  corresponds to. Defaults to `nil`.
  - startIndex (integer()): Start index (0-based, inclusive) in the plain-text message body this
  annotation corresponds to. Defaults to `nil`.
  - type (String.t): The type of this annotation. Defaults to `nil`.
  - userMention (GoogleApi.Chat.V1.Model.UserMentionMetadata.t): The metadata of user mention. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :length => integer(),
          :startIndex => integer(),
          :type => String.t(),
          :userMention => GoogleApi.Chat.V1.Model.UserMentionMetadata.t()
        }

  field(:length)
  field(:startIndex)
  field(:type)
  field(:userMention, as: GoogleApi.Chat.V1.Model.UserMentionMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Annotation do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Annotation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Annotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
