defmodule ExTwilio.Participant do
  @moduledoc """
  Represents a Participant resource in the Twilio API.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/conversation-participant-resource)

  ## Examples

  Since Participants belong to Conferences in the Twilio API, you must pass a
  conference to each function in this module. For example:

      ExTwilio.Participant.all(conference: "conference_sid")

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

  use ExTwilio.Resource, import: [:stream, :all, :find, :update, :create, :destroy]

  def parents, do: [:account, :conference]
end
