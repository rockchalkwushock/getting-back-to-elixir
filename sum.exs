defmodule Math do
  def sum(list, fun) do
    do_sum(list, fun, 0)
  end

  defp do_sum([], _fun, acc) do
    IO.puts acc
  end

  defp do_sum([h|t], fun, acc) do
    operation = fun.(h)
    do_sum(t, fun, operation + acc)
  end
end