defmodule REEx do
  def render(source, bindings \\ []) do
    compile_string(source, bindings)
  end

  def render_file(filename, bindings \\ []) do
    bindings = Keyword.put(bindings, :__dir__, :filename.dirname(filename))
    file = read_if_exists(filename)
    compile_string(file, bindings)
  end

  defp read_if_exists(filename) do
    case File.read filename do
      { :ok, file } -> file
      { :error, _ } ->
        case File.read filename <> ".eex" do
          { :ok, file } -> file
          { :error, reason } ->
            raise File.Error, reason: reason, action: "read file", path: filename
        end
    end
  end

  defp compile_string(file, bindings) do
    EEx.eval_string(file, bindings, [engine: REEx.Engine])
  end
end
