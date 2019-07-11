# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chatauth,
  ecto_repos: [Chatauth.Repo]

# Configures the endpoint
config :chatauth, ChatauthWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NkYMpmGY+/vfo6L9FgWS66Z4CzgauNrb21xfiYcxEcYfln4JOyvY8ngptnteyhTG",
  render_errors: [view: ChatauthWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chatauth.PubSub, adapter: Phoenix.PubSub.PG2]

config :chatauth, Chatauth.Accounts.Guardian,
  issuer: "chatauth",
  secret_key: "nxJWBOc1x93uRvDTCdvIvD/6kvh3m6008Zwa7sWLuq+/wmjuWZ85c60oGVvUkK07"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
