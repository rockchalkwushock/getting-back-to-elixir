defmodule Fibonnaci do
  def start(n) do
    start = :os.system_time(:seconds)
    fibNum = fib(n)
    finish = :os.system_time(:seconds)
    totalTime = finish - start
    IO.puts"The fibonnaci number was #{fibNum}."
    IO.puts"Fibonnaci of #{n} took #{totalTime} seconds to complete."
  end

  # Article about Tail-Call Optimization
  # https://www.stridenyc.com/blog/tail-call-optimization-with-fibonacci-in-elixir
  def fib(x) when x < 0, do: raise "Can't find fibonnaci of a number less than 0"
  def fib(x), do: fib(x, 1, 0)
  defp fib(0, _, result), do: result
  defp fib(x, next, result), do: fib(x - 1, next + result, next)
end