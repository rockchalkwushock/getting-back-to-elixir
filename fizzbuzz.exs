defmodule FizzBuzz do
  # Must take in a number.
  # Must create a range from that number
  # when multiple of 3 return 'fizz'
  # when multiple of 5 return 'buzz'
  # when multiple of 15 return 'fizzbuzz'
  # when no case matched return number

  def classify_range(n) when is_integer(n), do: Enum.each(0..n, &classify/1)

  # Use gaurd clause in lieu of cond statement.
  # classify/1 will take in the num from the range and output
  # based on the gaurd clauses.
  def classify(x) when rem(x, 15) == 0, do: "FizzBuzz"
  def classify(x) when rem(x, 3) == 0, do: "Fizz"
  def classify(x) when rem(x, 5) == 0, do: "Buzz"
  def classify(x), do: x
end