defmodule ChatUserauth.Accounts.Pipeline do
    use Guardian.Plug.Pipeline,
        otp_app: :chat_userauth,
        error_handler: ChatUserauth.Accounts.ErrorHandler,
        module: ChatUserauth.Accounts.Guardian

    # If there is a session token, validate it
    plug Guardian.Plug.VerifySession, claims: %{"typ" => "access"}
    # If there is an authorization header, validate it
    plug Guardian.Plug.VerifyHeader, claims: %{"typ" => "access"}
    # Load the user if either or the verifications worked
    plug Guardian.Plug.LoadResource, allow_bank: true
end