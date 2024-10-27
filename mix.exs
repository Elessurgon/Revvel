defmodule Revvel.MixProject do
  use Mix.Project

  def project do
    [
      app: :revvel,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :xlsxir, :hound]
    ]
  end

  defp deps do
    [
      {:csv, "~> 3.2"},
      {:xlsxir, "~> 1.6.4"},
      {:hound, "~> 1.0"}
    ]
  end
end
