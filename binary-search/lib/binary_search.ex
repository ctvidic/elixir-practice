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

  def search(_,_, from, to) when from>to, do: :not_found

  def search(numbers, key, from, to) do
    mid = div(from + to, 2)
    num = elem(numbers, mid)

    cond do
      num < key -> search(numbers, key, mid+1, to)
      num > key -> search(numbers, key, from, mid-1)
      num == key -> {:ok, mid}
    end
  end
end
