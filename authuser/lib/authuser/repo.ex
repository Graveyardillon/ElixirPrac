defmodule Authuser.Repo do
  use Ecto.Repo,
    otp_app: :authuser,
    adapter: Ecto.Adapters.Postgres
end
