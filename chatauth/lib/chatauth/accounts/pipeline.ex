defmodule Chatauth.Accounts.Pipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :chatchat,
    error_handler: Chatauth.Accounts.ErrorHandler,
    module: Chatauth.Accounts.Guardian

  plug Guardian.Plug.VerifySession, claims: %{"typ" => "access"}
  plug Guardian.Plug.VerifyHeader, claims: %{"typ" => "access"}
  plug Guardian.Plug.LoadResource, allow_blank: true
end
