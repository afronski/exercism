defmodule ResistorColorDuo do
  @moduledoc """
  Helping with color-coded resistors.
  """

  @resistance_chart %{
    :black => 0, :brown => 1, :red => 2, :orange => 3, :yellow => 4, :green => 5, :blue => 6, :violet => 7,
    :grey => 8, :white => 9
 }

  @doc """
  Calculate a resistance value from two colors
  """
  @spec value(colors :: [atom]) :: integer
  def value(colors) do
    colors
    |> Enum.map(&(@resistance_chart[&1]))
    |> Enum.take(2)
    |> Integer.undigits
  end
end
