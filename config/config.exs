use Mix.Config

config :minimal_graphql, port: 4000
import_config "#{Mix.env()}.exs"
