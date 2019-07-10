# ログインしていることを保証する
defmodule Chatauth.Auth.EnsureAuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :chatauth
  plug Guardian.Plug.EnsureAuthenticated
end
