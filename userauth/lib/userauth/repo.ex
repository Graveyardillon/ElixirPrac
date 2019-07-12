defmodule Userauth.Repo do
  use Ecto.Repo,
    otp_app: :userauth,
    adapter: Ecto.Adapters.Postgres
end
