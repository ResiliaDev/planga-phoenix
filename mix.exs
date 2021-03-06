defmodule PlangaPhoenix.MixProject do
  use Mix.Project

  def project do
    [
      app: :planga_phoenix,
      version: "1.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      source_url: "https://github.com/ResiliaDev/planga-phoenix",
      homepage_url: "https://www.planga.io",
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
      {:phoenix_html, "~> 2.9"},
      {:jose, "~> 1.8"},
      {:poison, "~> 3.0"},
      {:vex, "~> 0.8.0"},
      {:credo, "~> 0.9.1", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end


  defp package() do
    [
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* ),
      licenses: ["Apache 2.0"],
      links: %{"Planga Homepage" => "https://www.planga.io",
               "GitHub" => "https://github.com/ResiliaDev/planga-phoenix"
      }
    ]
  end

  defp description() do
    "Easy usage of the Planga Seamless Chat Service inside an Elixir+Phoenix application."
  end
end
