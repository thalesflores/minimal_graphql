use Mix.Config

config :minimal_graphql, MinimalGraphql.Repo,
  database: "minimal_graphql_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
