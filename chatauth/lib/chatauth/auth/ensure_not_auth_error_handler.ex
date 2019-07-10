defmodule Chatauth.Auth.EnsureNotAuthErrorHandler do
  import Phoenix.Controller, only: [put_flash:3, redirect: 2]
  import ChatauthWeb.Router.Helpers, only: [admin_login_path: 2]

  def auth_error(conn, {type, _reason}, _opts) do
    conn
    |> put_flash(:error, to_string(type))
    |> redirect(to: admin_root_path(conn, :new))
  end
end
