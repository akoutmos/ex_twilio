defmodule ExTwilio.Conversation.Receipt do
  @moduledoc """
  Represents a Participant resource for a message scoped receipt.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/receipt-resource)
  """

  defstruct account_sid: nil,
            conversation_sid: nil,
            sid: nil,
            message_sid: nil,
            channel_message_sid: nil,
            participant_sid: nil,
            status: nil,
            error_code: nil,
            date_created: nil,
            date_updated: nil,
            url: nil

  use ExTwilio.Resource,
    import: [
      :all,
      :stream,
      :find
    ]

  def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.Conversation.Conversation, key: :conversation},
      %ExTwilio.Parent{module: ExTwilio.Conversation.Message, key: :message}
    ]
end
