defmodule Chatauth.Repo do
  use Ecto.Repo,
    otp_app: :chatauth,
    adapter: Ecto.Adapters.Postgres
end
