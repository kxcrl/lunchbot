defmodule Lunchbot.PageController do
  use Lunchbot.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
