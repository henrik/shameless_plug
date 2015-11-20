defmodule ShamelessPlugTest do
  use ExUnit.Case, async: true
  use Plug.Test

  defmodule TestApp do
    use Plug.Router

    plug :match
    plug ShamelessPlug
    plug :dispatch

    get "/say/:text", do: send_resp(conn, 200, text)
  end

  test "strips the word 'shame' out of the response body" do
    conn = get("/say/Hello shameful world!")
    assert conn.resp_body == "Hello ful world!"
  end

  test "is case-insensitive" do
    conn = get("/say/Hello sHaMeful WORLD!")
    assert conn.resp_body == "Hello ful WORLD!"
  end

  defp get(path) do
    conn(:get, path)
    |> TestApp.call(TestApp.init([]))
  end
end
