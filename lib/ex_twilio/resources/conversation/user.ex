defmodule ExTwilio.Conversation.User do
  @moduledoc """
  Represents a User resource for a conversation.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/user-resource)
  """

  defstruct sid: nil,
            account_sid: nil,
            chat_service_sid: nil,
            role_sid: nil,
            identity: nil,
            friendly_name: nil,
            attributes: nil,
            is_online: nil,
            is_notifiable: nil,
            date_created: nil,
            date_updated: nil,
            url: nil,
            links: nil

  use ExTwilio.Resource,
    import: [
      :all,
      :stream,
      :create
    ]
end
