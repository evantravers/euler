defmodule Euler.P3 do
  @moduledoc "https://projecteuler.net/problem=3"

  def sieve(n) when is_integer(n), do: sieve(Enum.to_list(2..n), [])
  def sieve([], result), do: Enum.reverse(result)
  def sieve([prime|tail], result) do
    tail
    |> Enum.reject(& rem(&1, prime) == 0)
    |> sieve([prime|result])
  end

  @doc ~S"""
      iex> prime_factors(13195)
      [5, 7, 13, 29]
  """
  def prime_factors(number, factors \\ []) do
  end

  def find_gpf(number) do
    number
    |> prime_factors
    |> Enum.max
  end

  def solve(number), do: find_gpf(number)
end
