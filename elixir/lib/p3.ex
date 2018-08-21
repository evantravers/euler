defmodule Euler.P3 do
  @moduledoc "https://projecteuler.net/problem=3"

  @doc """
  Simple sieve of eratosthenes. I don't think it benefits from the one array
  speedup of the normal declarative version... unless elixir/erlang is sharing
  the memory space of the list being passed around.

  Also, the use of `rem()` instead of cheating with the array index trick is
  hurting me here. I may try a speedup at some point, unsure what that would
  look like in elixir.
  """
  def sieve(n) when is_integer(n), do: sieve(Enum.to_list(2..n), [])
  def sieve([], result), do: Enum.reverse(result)
  def sieve([prime|tail], result) do
    tail |> Enum.reject(& rem(&1, prime) == 0) |> sieve([prime|result])
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
