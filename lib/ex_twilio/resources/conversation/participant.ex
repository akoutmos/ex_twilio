defmodule ExTwilio.Conversation.Participant do
  @moduledoc """
  Represents a Participant resource for a conversation.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/conversation-participant-resource)
  """

  defstruct account_sid: nil,
            conversation_sid: nil,
            sid: nil,
            identity: nil,
            attributes: nil,
            messaging_binding: nil,
            role_sid: nil,
            date_created: nil,
            date_updated: nil,
            url: nil,
            last_read_message_index: nil,
            last_read_timestamp: nil

  use ExTwilio.Resource,
    import: [
      :all,
      :stream,
      :create,
      :find,
      :destroy
    ]

  def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.Conversation.Conversation, key: :conversation}
    ]
end
