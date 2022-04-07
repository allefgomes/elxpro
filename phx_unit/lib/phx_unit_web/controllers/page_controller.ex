defmodule PhxUnitWeb.PageController do
  use PhxUnitWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
