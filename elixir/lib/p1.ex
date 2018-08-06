defmodule Euler.P1 do
  @moduledoc """
  https://projecteuler.net/problem=1
  """

  def is_multiple?(n, m), do: rem(n, m) == 0

  def solve do
    0..999
    |> Stream.filter(fn(n) ->
      is_multiple?(n, 3) || is_multiple?(n, 5)
    end)
    |> Enum.sum
  end
end
