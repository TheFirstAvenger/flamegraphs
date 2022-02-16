defmodule FlamegraphsWeb.PageController do
  use FlamegraphsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
