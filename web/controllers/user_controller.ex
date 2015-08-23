defmodule Lunchbot.UserController do
  use Lunchbot.Web, :controller
  alias Lunchbot.Repo
  alias Lunchbot.User

  plug :action

  def index(conn, _params) do
    users = Repo.all(User)
    render conn, users: users
  end
end
