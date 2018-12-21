defmodule Hub.MixProject do
  use Mix.Project

  def project do
    [
      app: :hub,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ibrowse, git: "git://github.com/cmullaparthi/ibrowse.git", tag: "v4.4.1"},
      {:poison, "~> 1.3.0"},
      {:httpotion, "~> 1.0.0"}
    ]
  end
end
