defmodule ExIot.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_iot,
      version: "0.0.1",
      elixir: "~> 1.2",
      description: "IoT support for Elixir",
      deps: deps
      package: package,
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
    ]
  end

  def application do
    [
      applications: [:logger]
    ]
  end

  def package do
    [
      maintainers: ["Michał Kalbarczyk"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/fazibear/ex_iot"}
   ]
  end

  defp deps do
    [
      {:fwatch, "~> 0.1.0"}
    ]
  end
end
