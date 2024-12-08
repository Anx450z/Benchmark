defmodule Benchmark do
  @iterations 1_000_000

  def run do
    start_time = :os.system_time(:microsecond)

    sum =
      Enum.reduce(0..(@iterations - 1), 0, fn i, acc ->
        Enum.reduce(0..99, acc, fn j, inner_acc ->
          inner_acc + i * j
        end)
      end)

    end_time = :os.system_time(:microsecond)
    duration = (end_time - start_time) / 1_000_000

    IO.puts("Elixir Result: #{sum}")
    IO.puts("Elixir Time taken: #{duration} seconds")
  end
end

Benchmark.run()
