#ログインしていないことを保証するパイプライン
defmodule ChatApp.Auth.EnsureNotAuthPipeline do
    use Guardian.Plug.Pipeline, otp_app: :ChatApp
    plug Guardian.Plug.EnsureNotAuthenticated
end