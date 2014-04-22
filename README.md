# REEx - Render EEx [![Build Status](https://travis-ci.org/edgurgel/reex.svg)](https://travis-ci.org/edgurgel/reex)

## Motivation

Do you miss the `<%= render "view"` %>` from your Rails views?

## Usage

```elixir
# render_example.eex
<%= render "example", content: content %>
```

```elixir
# example.eex
<h1><%= content %></h1>
```

```iex
iex> REEx.render_file("/home/somewhere/render_example.eex", content: "yay")
<h1>yay</h1>\n\n
```

REEx does basically the same thing EEx does but with the awesome `render` function :v:
