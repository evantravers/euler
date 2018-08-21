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
    tail |> Enum.reject(&is_factor?(&1, prime)) |> sieve([prime|result])
  end

  def possible_factors(n), do: sieve(n)

  def is_factor?(number, factor), do: rem(number, factor) == 0

  @doc ~S"""
      iex> prime_factors(13195)
      [29, 13, 7, 5]
  """
  def prime_factors(n), do: prime_factors(n, [], possible_factors(n))
  def prime_factors(number, factors, primes) do
    if number == 1 || Enum.member?(primes, number) do
      [number|factors]
    else
      # find a prime factor of the number
      factor = Enum.find(primes, &is_factor?(number, &1))
      prime_factors(div(number, factor), [factor|factors], primes)
    end
  end

  def find_gpf(number) do
    number
    |> prime_factors
    |> Enum.max
  end

  def solve, do: find_gpf(600_851_475_143)
end
