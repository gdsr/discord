defmodule Discord.MixProject do
  use Mix.Project

  def project do
    [
      app: :discord,
      version: "0.1.0",
      elixir: "~> 1.12",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Discord",
      source_url: "https://github.com/gdsr/discord"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:mojito, "~> 0.7.9"}
    ]
  end

  defp description do
    "Elixir Discord API"
  end

  defp package do
    [
      name: "discord",
      files: ~w(lib .formatter.exs README* LICENSE* test),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/gdsr/discord"}
    ]
  end
end
