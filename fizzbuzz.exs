defmodule FizzBuzz do
  # Must take in a number.
  # Must create a range from that number
  # when multiple of 3 return 'fizz'
  # when multiple of 5 return 'buzz'
  # when multiple of 15 return 'fizzbuzz'
  # when no case matched return number

  def run(n) do
    range = 0..n
    print_numbers(range)
  end

  def print_numbers(range) do
    Enum.map(range, fn num ->
      cond do
        rem(num, 15) == 0 ->
          IO.puts('FizzBuzz')
        rem(num, 3) == 0 ->
          IO.puts('Fizz')
        rem(num, 5) == 0 ->
          IO.puts('Buzz')
        true ->
          IO.puts(num)
      end
      end
      )
  end
end