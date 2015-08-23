defmodule Lunchbot.User do
  use Ecto.Model

  schema "users" do
    field :name
    field :slack_id

    timestamps
  end
end
