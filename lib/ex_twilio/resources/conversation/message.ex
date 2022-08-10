defmodule ExTwilio.Conversation.Message do
  @moduledoc """
  Represents a Participant resource for a conversation scoped message.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/conversation-message-resource)
  """

  defstruct account_sid: nil,
            conversation_sid: nil,
            sid: nil,
            index: nil,
            author: nil,
            body: nil,
            media: nil,
            attributes: nil,
            participant_id: nil,
            date_created: nil,
            date_updated: nil,
            url: nil,
            delivery: nil,
            links: nil

  use ExTwilio.Resource,
    import: [
      :all,
      :stream,
      :create,
      :find
    ]

  def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.Conversation.Conversation, key: :conversation}
    ]
end
