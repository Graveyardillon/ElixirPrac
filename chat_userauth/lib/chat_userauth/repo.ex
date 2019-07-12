defmodule ChatUserauth.Repo do
  use Ecto.Repo,
    otp_app: :chat_userauth,
    adapter: Ecto.Adapters.Postgres
end
