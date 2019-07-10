defmodule ChatauthWeb.PageController do
  use ChatauthWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
