# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :authuser,
  ecto_repos: [Authuser.Repo]

# Configures the endpoint
config :authuser, AuthuserWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tXrjDSdBz9sLMj6aGlkS1QkgBbxDQ41O3oHC+fcXjKzEKcrk61lA/VzTB8+b07JR",
  render_errors: [view: AuthuserWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Authuser.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


config :authuser, Authuser.Accounts.Guardian,
  issuer: "authuser",
  secret_key: "gOakJRVoQMV6m3w8D+PTO2yva5gy6H6+OnnpcbCTcfSl5xzDOUDdD0ZvTZrXMXj+"



# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
