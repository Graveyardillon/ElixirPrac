#ログインしていることを保証売るパイプライン
defmodule ChatApp.Auth.EnsureAuthPipeline do
    use Guardian.Plug.Pipeline, otp_app: :ChatApp
    plug Guardian.Plug.EnsureAuthenticated   
end