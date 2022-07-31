defmodule BoutiqueInventory do
  def sort_by_price(inventory), do: inventory |> Enum.sort_by(&(&1.price), :asc)

  def with_missing_price(inventory), do: inventory |> Enum.filter(&(&1.price == nil))

  def update_name(item, old, new), do: %{ item | name: String.replace(item.name, old, new) }

  def update_names(inventory, old, new), do: inventory |> Enum.map(&(update_name(&1, old, new)))

  def increase_quantity(%{ :name => name, :price => price, :quantity_by_size => quantity_by_size}, count) do
    %{
      :name => name,
      :price => price,
      :quantity_by_size => Enum.into(quantity_by_size, %{},  fn {size, quantity} -> {size, quantity + count} end)
    }
  end

  def total_quantity(item), do: item.quantity_by_size |> Enum.reduce(0, fn ({_size, count}, total) -> total + count end)
end
