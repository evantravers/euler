defmodule Euler.P2 do
  @moduledoc "https://projecteuler.net/problem=2"

  def solve do
    {0, 1}
    |> Stream.unfold(fn({a, b}) -> {a, {b, a + b}} end)
    |> Stream.filter(&rem(&1, 2) == 0)
    |> Stream.take_while(& &1 < 4_000_000)
    |> Enum.sum
  end
end
