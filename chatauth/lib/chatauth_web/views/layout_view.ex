defmodule ChatauthWeb.LayoutView do
  use ChatauthWeb, :view
  alias Chatauth.Accounts.Guardian

  def current_user(conn) do
    Guardian.Plug.current_resource(conn)
  end
end
