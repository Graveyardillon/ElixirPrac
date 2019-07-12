use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chat_userauth, ChatUserauthWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :chat_userauth, ChatUserauth.Repo,
  username: "postgres",
  password: "password",
  database: "chat_userauth_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
