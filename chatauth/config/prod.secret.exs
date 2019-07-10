use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :chatauth, ChatauthWeb.Endpoint,
  secret_key_base: "C0LPT34e/TqeGQ6ljbgb4nJBWW5MaH6UNNaYjSiFnb7KkHVGrzfbhH8LfzpBRLiO"

# Configure your database
config :chatauth, Chatauth.Repo,
  username: "postgres",
  password: "postgres",
  database: "chatauth_prod",
  pool_size: 15
