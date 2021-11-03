defmodule CollatzConjecture do
  require Integer

  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) when input > 0, do: calc(input, 0)

  @doc """
  calc/2 is a private function that handles accumulation process.
  """
  @spec calc(number :: pos_integer(), steps :: non_neg_integer()) :: non_neg_integer()
  defp calc(1, steps), do: steps
  defp calc(number, steps) when Integer.is_even(number), do: calc(div(number, 2), steps + 1)
  defp calc(number, steps) when Integer.is_odd(number), do: calc(3 * number + 1, steps + 1)
end
