defmodule ShamelessPlug do
  import Plug.Conn

  def init([]), do: []

  def call(conn, _opts) do
    register_before_send conn, fn conn ->
      put_in conn.resp_body,
        conn.resp_body
        |> String.replace(~r/shame/i, "")
    end
  end
end
