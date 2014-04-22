defmodule REExTest do
  use ExUnit.Case
  import REEx

  test "render common eex" do
    assert render("<%= foo %>", [foo: "bar!"]) == "bar!"
  end

  test "nested render" do
    filename = Path.join(__DIR__, "fixtures/render_example.eex")
    data = render_file(filename, content: "yay")
    assert data == "<h1>yay</h1>\n\n<hr></hr>\n<h1>yay</h1>\n\n"
  end

  test "render non existing file" do
    assert_raise File.Error, ~r/could not read file/, fn ->
      render_file(Path.join(__DIR__, "fixtures/nonexistingfile.eex"))
    end
  end
end
