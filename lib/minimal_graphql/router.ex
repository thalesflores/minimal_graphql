defmodule MinimalGraphql.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/graphql" do
    send_resp(conn, 200, "world")
  end

  post "/graphql" do
    send_resp(conn, 200, "world")
  end

  match _ do
    send_resp(conn, 404, "Requested page not found!")
  end
end
