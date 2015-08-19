defmodule Lunchbot.MessageTest do
  use ExUnit.Case, async: true

  test 'It accepts messages' do
    json = ~s({ "type":"message", "user":"Bob", "text":"Hello" })
    message = %Lunchbot.Message{ user: "Bob", text: "Hello" }

    assert Lunchbot.Message.parse(json) == message
  end
end
