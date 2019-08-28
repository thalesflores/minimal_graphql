defmodule MinimalGraphql.Repo do
  use Ecto.Repo,
    otp_app: :minimal_graphql,
    adapter: Ecto.Adapters.Postgres
end
