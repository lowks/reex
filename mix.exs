defmodule Reex.Mixfile do
  use Mix.Project

  def project do
    [ app: :reex,
      version: "0.0.1",
      name: "REEx",
      elixir: "~> 0.12.5 or ~> 0.13.0",
      deps: [] ]
  end

  def application do
    []
  end
end
