defmodule Lunchbot.UserView do
  use Lunchbot.Web, :view

  def render("index.json", %{users: users}) do
    users
  end
end
