defmodule ExTwilio.Conversation.Service do
  @moduledoc """
  Represents a Service resource in the Twilio Conversation API.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/service-resource)
  """
  defstruct account_sid: nil,
            sid: nil,
            friendly_name: nil,
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

  def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.Conversation.Service, key: :service}
    ]
end
