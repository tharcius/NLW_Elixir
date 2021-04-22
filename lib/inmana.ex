defmodule Inmana do
  alias Inmana.Restaurants.Create, as: RestaurantCreate
  alias Inmana.Supply.Create, as: SupplyCreate
  alias Inmana.Supply.Get, as: SupplyGet

  @moduledoc """
  Inmana keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  # Restaurants
  defdelegate create_restaurant(params), to: RestaurantCreate, as: :call

  # Supplies
  defdelegate create_supply(params), to: SupplyCreate, as: :call
  defdelegate get_supply(params), to: SupplyGet, as: :call
end
