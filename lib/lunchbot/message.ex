defmodule Lunchbot.Message do
  defstruct user: "", text: ""

  def parse(json) do
    Poison.decode!(json, as: Lunchbot.Message)
  end
end
