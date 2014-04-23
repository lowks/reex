# REEx - Render EEx [![Build Status](https://travis-ci.org/edgurgel/reex.svg)](https://travis-ci.org/edgurgel/reex)

## Motivation

Do you miss the `<%= render "view"` %>` from your Rails views?

## Usage

```erb
# render_example.eex
<%= render "example", content: content %>
```

```erb
# example.eex
<h1><%= content %></h1>
```

```iex
iex> REEx.render_file("/home/somewhere/render_example.eex", content: "yay")
<h1>yay</h1>\n\n
```

REEx does basically the same thing EEx does but with the awesome `render` function :v:

## TODO

* Support some `lookup_dirs` option to lookup for a filename in a list of dirs like: `REEx.render_file(..., [content: ...], [lookup_dirs: ["views/", "etc"])`;
* Maybe have a base_dir configuration using application env stuff. Also it should be possible to retrieve it with something like `REEx.root`;
