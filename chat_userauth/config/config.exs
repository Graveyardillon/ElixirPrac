# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chat_userauth,
  ecto_repos: [ChatUserauth.Repo]

# Configures the endpoint
config :chat_userauth, ChatUserauthWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zlYnC9UgiwBzfmQvEXXvlnLNUP28Ot1BNoV22XaE4Jekd/9DNXnmhcy+7i98hACN",
  render_errors: [view: ChatUserauthWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChatUserauth.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :chat_userauth, ChatUserauth.Accounts.Guardian,
  issur: "chat_userauth",
  secret_key: "190c7u2bMjoetkALWyonXrgvP0GEsGYZ4fasBzAGI3JDawpzIQgvkncEXpeD267l"