defmodule ChatUserauthWeb.PageController do
  use ChatUserauthWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
