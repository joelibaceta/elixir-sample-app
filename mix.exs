defmodule DemoElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :demo_elixir,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()), # <- Asegura la compilación de todos los módulos
      deps: deps()
    ]
  end

  defp elixirc_paths(_env) do
    ["lib"] # Incluye explícitamente la carpeta `lib/`
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end
end