#エラー時の挙動
defmodule ChatApp.Auth.EnsureNotAuthEorrorHandler do
    import Phoenix.Controller, only: [put_flash: 3, redirect: 2]
    import ChatAppWeb.Router.Helpers. only: [admin_root_path: 2]   

    def auth_error(conn, {type, _reason}, _opts) do
        #ログインしていた場合は管理画面トップにリダイレクトさせる
        conn
        |> put_flash(:error, to_string(type))
        |> redirect(to: admin_root_path(conn, :new))        
    end 
en