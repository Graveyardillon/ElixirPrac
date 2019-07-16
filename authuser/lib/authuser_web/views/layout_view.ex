defmodule AuthuserWeb.LayoutView do
  use AuthuserWeb, :view
  alias Authuser.Accounts.Guardian
  def current_user(conn) do
    Guardian.Plug.current_resource(conn)
  end
end
