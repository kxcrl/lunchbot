defmodule Lunchbot.UserControllerTest do
  use ExUnit.Case, async: false
  use Lunchbot.ConnCase
  alias Lunchbot.User
  alias Lunchbot.Repo

  test "/index returns a list of users" do
    users_as_json =
      %User{name: "Jane Smith", slack_id: "123abc"}
      |> Repo.insert
      |> List.wrap
      |> Poison.encode!

    response = conn(:get, "/api/users") |> send_request

    assert response.status == 200
    assert response.resp_body == users_as_json
  end

  defp send_request(conn) do
    conn
    |> put_private(:plug_skip_csrf_protection, true)
    |> Lunchbot.Endpoint.call([])
  end
end
