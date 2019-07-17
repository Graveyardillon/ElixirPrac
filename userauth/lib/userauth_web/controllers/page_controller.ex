defmodule UserauthWeb.PageController do
  use UserauthWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
