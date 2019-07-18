defmodule UserauthWeb.LayoutView do
  use UserauthWeb, :view
  alias Userauth.Accounts.Guardian
  def current_user(conn) do
    Guardian.Plug.current_resource(conn)
  end
end