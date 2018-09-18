defmodule Fibonnaci do
  def start(n) do
    start = :os.system_time(:seconds)
    fibNum = fib(n)
    finish = :os.system_time(:seconds)
    totalTime = finish - start
    IO.puts"The fibonnaci number was #{fibNum}."
    IO.puts"Fibonnaci of #{n} took #{totalTime} seconds to complete."
  end

  def fib(0), do: 0
  def fib(1), do: 1
  def fib(x) when x < 0, do: raise "Can't find fibonnaci of a number less than 0"
  def fib(x), do: fib(x - 1) + fib(x - 2)
end