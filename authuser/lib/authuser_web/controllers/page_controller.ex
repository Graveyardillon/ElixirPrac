defmodule AuthuserWeb.PageController do
  use AuthuserWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
