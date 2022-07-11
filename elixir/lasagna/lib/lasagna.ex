defmodule Lasagna do
  @minutes_in_total 40
  @minutes_per_layer 2

  def expected_minutes_in_oven(), do: @minutes_in_total
  def remaining_minutes_in_oven(passed), do: expected_minutes_in_oven() - passed
  def preparation_time_in_minutes(layers), do: layers * @minutes_per_layer
  def total_time_in_minutes(layers, passed), do: preparation_time_in_minutes(layers) + passed
  def alarm(), do: "Ding!"
end
