defmodule Inmana.Restaurants.Create do
  alias Inmana.Repo
  alias Imnana.Restaurant

  def call(params) do
    params
    |> Restaurant.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Restaurant{}} = result), do: result

  defp handle_insert({:error, %{result: result, status: :bad_request}}),
    do: {:error, result: result}
end
