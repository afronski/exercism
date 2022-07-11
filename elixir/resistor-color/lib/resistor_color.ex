defmodule ResistorColor do
  @moduledoc """
  Helping with color-coded resistors.
  """

  @colors ~w(black brown red orange yellow green blue violet grey white)a

  @doc """
  Return all colors as a list.
  """
  @spec colors() :: list(String.t())
  def colors(), do: @colors

  @doc """
  Return the value of a color band.
  """
  @spec code(atom()) :: non_neg_integer()
  def code(color), do: Enum.find_index(@colors, fn c -> c == color end)
end
