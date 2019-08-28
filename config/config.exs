use Mix.Config

config :minimal_graphql, port: 4000
config :minimal_graphql, ecto_repos: [MinimalGraphql.Repo]
import_config "#{Mix.env()}.exs"
