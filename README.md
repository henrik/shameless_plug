# ShamelessPlug

A novelty [Elixir Plug](https://github.com/elixir-lang/plug) to remove the word "shame" from the page body.


## Usage

Add to your list of dependencies in `mix.exs`:

    def deps do
      [
        {:shameless_plug, "> 0.0.0"},
      ]
    end

Then just

    plug ShamelessPlug

like any other plug. You probably want it late in the pipeline (after assigning a body), but before actually sending the response.


## Development

    mix deps.get
    mix test


## Credits and license

By Henrik Nyh 2015-11-20 under the MIT license.
