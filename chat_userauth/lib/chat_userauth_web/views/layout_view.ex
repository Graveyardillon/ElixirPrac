defmodule ChatUserauthWeb.LayoutView do
  use ChatUserauthWeb, :view

  alias ChatUserauth.Accounts.Guardian
  def current_user(conn) do
    Guardian.Plug.current_resource(conn)
  end

end
