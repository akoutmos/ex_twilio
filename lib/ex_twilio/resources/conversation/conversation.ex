defmodule ExTwilio.Conversation.Conversation do
  @moduledoc """
  Represents a Service resource in the Twilio Conversation API.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/conversation-resource)
  """
  defstruct account_sid: nil,
            chat_service_sid: nil,
            messaging_service_sid: nil,
            sid: nil,
            friendly_name: nil,
            unique_name: nil,
            attributes: nil,
            state: nil,
            date_created: nil,
            date_updated: nil,
            timers: nil,
            url: nil,
            links: nil,
            bindings: nil

  use ExTwilio.Resource,
    import: [
      :all,
      :stream,
      :create
    ]

  def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.Conversation.Service, key: :service}
    ]
end
