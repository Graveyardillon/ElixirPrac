use Mix.Config

config :people, People.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "people_repo",
  username: "postgres", #ohzw
  password: "password", #ohzw
  hostname: "localhost"

config :people,
  ecto_repos: [People.Repo]