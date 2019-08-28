defmodule MinimalGraphql.Application do
  use Application

  alias MinimalGraphql.Endpoint

  def start(_type, _args),
    do: Supervisor.start_link(children(), opts())

  defp children do
    [
      {MinimalGraphql.Repo, []},
      {Plug.Cowboy, scheme: :http, plug: Endpoint, options: [port: Application.get_env(:minimal_graphql, :port)]}
    ]
  end

  defp opts do
    [
      strategy: :one_for_one,
      name: MinimalGraphql.Supervisor
    ]
  end
end
