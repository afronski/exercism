defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: [language | list]

  def remove([]), do: []
  def remove([_head | tail]), do: tail

  def first([]), do: nil
  def first([head | _tail]), do: head

  def count(list), do: length(list)

  def exciting_list?(list), do: exciting_list?(list, false)

  defp exciting_list?([], result), do: result
  defp exciting_list?([head | tail], result), do: exciting_list?(tail, result or head == "Elixir")
end
