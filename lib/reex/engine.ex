defmodule REEx.Engine do
  use EEx.TransformerEngine
  use EEx.AssignsEngine
  @doc false
  defp transform({ :render, _line, [ filename | args ] }) do
    quote do
      filename = var!(__dir__) <> "/" <> unquote(filename)
      REEx.render_file(filename, List.flatten(unquote(args)))
    end
  end
  defp transform(arg), do: super(arg)
end
