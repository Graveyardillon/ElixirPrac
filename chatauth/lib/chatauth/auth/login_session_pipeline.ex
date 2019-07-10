# 認証情報を扱う
defmodule Chatauth.Auth.LoginSessionPipeline do
  use Guardian.Plug.Pipeline, otp_app: :chatauth

  plug Guardian.Plug.VerifySession, claims: %{"typ" => "access"}
  plug Guardian.Plug.LoadResource, allow_blank: true
end
