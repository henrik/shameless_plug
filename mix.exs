defmodule ShamelessPlug.Mixfile do
  use Mix.Project

  def project do
    [
      app: :shameless_plug,
      version: "1.0.0",
      elixir: "~> 1.1",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: "A novelty Plug to remove the word \"shame\" from the page body.",
      package: package,
      deps: deps,
   ]
  end

  def application do
    [applications: [:plug]]
  end

  defp package do
    [
      maintainers: ["Henrik Nyh"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/henrik/shameless_plug",
      },
    ]
  end

  defp deps do
    [
      {:plug, "~> 1.0"},
    ]
  end
end
