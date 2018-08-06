defmodule Euler do
  @moduledoc """
  Documentation for Euler.
  """

  @doc """
  Hello world.

  ## Examples

  """
end

defmodule Mix.Tasks.P do
  use Mix.Task

  @shortdoc "Run a specific problem from the problem set"
  def run(p) do
    if p == ["all"] do
      {total_time, _} = :timer.tc(fn ->
        Enum.each(1..25, fn d ->
          run d
          IO.puts "\n"
        end)
      end)
      IO.puts("Total Time: #{total_time/1_000_000} seconds")
    else
      {time, answer} = :timer.tc(fn ->
        apply(String.to_existing_atom("Elixir.Euler.P#{p}"), :solve, [])
      end)
      IO.puts "P#{p}:\n#{answer}\n(#{time/1_000_000} seconds)\n"
    end
  end
end
