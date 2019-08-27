defmodule MinimalGraphql.Endpoint do
  use Plug.Router
  use Plug.Debugger
  use Plug.ErrorHandler

  alias MinimalGraphql.Router
  require Logger

  plug(Plug.Logger)
  plug(:match)

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Poison
  )

  plug(:dispatch)

  def init(_opts) do
    Logger.info("Starting server at http://localhost:#{Application.get_env(:minimal_graphql, :port)}/")
  end

  forward("/", to: Router)
end
