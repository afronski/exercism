defmodule BinarySearch do
  @doc """
    Searches for a key in the tuple using the binary search algorithm.
    It returns :not_found if the key is not in the tuple.
    Otherwise returns {:ok, index}.

    ## Examples

      iex> BinarySearch.search({}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 5)
      {:ok, 2}

  """

  @spec search(tuple, integer) :: {:ok, integer} | :not_found
  def search(numbers, key), do: search(numbers, key, 0, tuple_size(numbers) - 1)

  @spec search(tuple, integer, integer, integer) :: integer | :not_found
  def search(_numbers, _key, low, high) when high < low, do: :not_found
  def search(numbers, key, low, high) do
    middle = div(low + high, 2)

    case elem(numbers, middle) do
      ^key                 -> {:ok, middle}
      item when key < item -> search(numbers, key, low, middle - 1)
      item when key > item -> search(numbers, key, middle + 1, high)
    end
  end
end
