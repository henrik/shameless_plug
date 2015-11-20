defmodule ShamelessPlug.Mixfile do
  use Mix.Project

  def project do
    [
      app: :shameless_plug,
      version: "0.0.1",
      elixir: "~> 1.1",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,
   ]
  end

  def application do
    [applications: [:plug]]
  end

  defp deps do
    [
      {:plug, "~> 1.0"},
    ]
  end
end
