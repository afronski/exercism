defmodule KitchenCalculator do
  @us_cup_volume_in_ml 240.0
  @us_fluid_ounce_volume_in_ml 30.0
  @us_teaspoon_volume_in_ml 5.0
  @us_tablespoon_volume_in_ml 15.0

  def get_volume({_unit, volume}), do: volume

  def to_milliliter({:milliliter, volume}), do: {:milliliter, volume}
  def to_milliliter({:cup, cups}), do: {:milliliter, cups * @us_cup_volume_in_ml}
  def to_milliliter({:fluid_ounce, ounces}), do: {:milliliter, ounces * @us_fluid_ounce_volume_in_ml}
  def to_milliliter({:teaspoon, spoons}), do: {:milliliter, spoons * @us_teaspoon_volume_in_ml}
  def to_milliliter({:tablespoon, spoons}), do: {:milliliter, spoons * @us_tablespoon_volume_in_ml}

  def from_milliliter({:milliliter, volume}, :milliliter), do: {:milliliter, volume}
  def from_milliliter({:milliliter, volume}, :cup), do: {:cup, volume / @us_cup_volume_in_ml}
  def from_milliliter({:milliliter, volume}, :fluid_ounce), do: {:fluid_ounce, volume / @us_fluid_ounce_volume_in_ml}
  def from_milliliter({:milliliter, volume}, :teaspoon), do: {:teaspoon, volume / @us_teaspoon_volume_in_ml}
  def from_milliliter({:milliliter, volume}, :tablespoon), do: {:tablespoon, volume / @us_tablespoon_volume_in_ml}

  def convert({:milliliter, _volume} = pair, unit), do: from_milliliter(pair, unit)
  def convert(pair, :milliliter), do: to_milliliter(pair)
  def convert(pair, unit), do: pair |> from_milliliter() |> to_milliliter(unit)
end
