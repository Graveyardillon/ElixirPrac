# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :userauth,
  ecto_repos: [Userauth.Repo]

# Configures the endpoint
config :userauth, UserauthWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XfD3TCzinI3tGevnme2RGozygWdDyDPw9UXDh39wpU5+kHwZBKUAmBFz4aI6UT46",
  render_errors: [view: UserauthWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Userauth.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :userauth, Userauth.Accounts.Guardian,
  issur: "userauth",
  secret_key: "ZeVY/R64mP5mSyy6dAu1vjC5NXmNtyJBgTSshFVX8G7EtQ3hnnkr1ylTJvN4h72T"

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
