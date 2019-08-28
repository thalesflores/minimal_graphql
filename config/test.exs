use Mix.Config

config :minimal_graphql, MinimalGraphql.Repo,
  database: "minimal_graphql_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
