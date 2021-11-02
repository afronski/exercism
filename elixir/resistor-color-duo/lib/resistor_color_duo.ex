defmodule ResistorColorDuo do
  @moduledoc """
  Helping with color-coded resistors.
  """

  @colors ~w(black brown red orange yellow green blue violet grey white)a

  @doc """
  Calculate a resistance value from two colors
  """
  @spec value(colors :: [atom]) :: integer
  def value(colors) do
    String.to_integer("#{get_color(Enum.at(colors, 0))}#{get_color(Enum.at(colors, 1))}")
  end

  @spec get_color(color :: atom) :: integer
  defp get_color(color) do
    Enum.find_index(@colors, fn c -> c == color end)
  end
end
