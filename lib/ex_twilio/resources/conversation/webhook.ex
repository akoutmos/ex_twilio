defmodule ExTwilio.Conversation.Webhook do
  @moduledoc """
  Represents a Participant resource for a conversation scoped webhook.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/conversation-scoped-webhook-resource)
  """

  defstruct sid: nil,
            account_sid: nil,
            conversation_sid: nil,
            target: nil,
            url: nil,
            configuration: nil,
            date_created: nil,
            date_updated: nil

  use ExTwilio.Resource,
    import: [
      :all,
      :stream,
      :create,
      :destroy,
      :update
    ]

  def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.Conversation.Conversation, key: :conversation}
    ]
end
