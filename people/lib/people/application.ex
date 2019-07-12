defmodule People.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec
    children = [
      # Starts a worker by calling: People.Worker.start_link(arg)
      # {People.Worker, arg}
      supervisor(People.Repo, [])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: People.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
