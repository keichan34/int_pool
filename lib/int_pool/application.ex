defmodule IntPool.Application do
  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      # Starts a worker by calling: IntPool.Worker.start_link(arg1, arg2, arg3)
      # worker(IntPool.Worker, [arg1, arg2, arg3]),
      Plug.Adapters.Cowboy.child_spec(:http, IntPool.Router, [], [port: IntPool.Config.http_port])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: IntPool.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
