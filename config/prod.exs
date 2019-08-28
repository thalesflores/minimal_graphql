config :minimal_graphql, port: String.to_integer(System.get_env("PORT") || "80")

config :minimal_graphql, MinimalGraphql.Repo,
  database: "minimal_graphql_prod",
  username: System.get_env("USERNAME"),
  password: System.get_env("PASSWORD"),
  hostname: System.get_env("HOSTNAME")
