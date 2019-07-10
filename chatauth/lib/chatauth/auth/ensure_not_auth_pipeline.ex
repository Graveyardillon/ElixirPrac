# ログインしていないことを保証する
defmodule Chatauth.Auth.EnsureNotAuthPipeline do
  use Guardian.Plug.Pipeline, otp_app:, :chatauth
  plug Guardian.Plug.EnsureNotAuthenticated
end
