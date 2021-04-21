defmodule ImnanaWeb.FallbackController do
  use InmanaWeb, :controller

  alias InmanaWeb.Errorview

  def call(conn, {:error, %{result: result, status: status}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end
end
