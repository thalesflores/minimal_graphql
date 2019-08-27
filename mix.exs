defmodule MinimalGraphql.MixProject do
  use Mix.Project

  def project do
    [
      app: :minimal_graphql,
      version: "0.1.0",
      elixir: "~> 1.9.1",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {MinimalGraphql.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.1"},
      {:plug_cowboy, "~> 2.0"}
    ]
  end

  defp aliases do
    [
      server: ["run --no-halt"]
    ]
  end
end
