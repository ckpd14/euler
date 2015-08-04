# https://projecteuler.net/problem=1

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

defmodule Problem1 do
  def solve do
    IO.puts  Enum.reduce((Enum.filter((Enum.to_list 1..999), fn(x) -> (rem(x, 3) == 0 || rem(x, 5) == 0) end)), 0, &(&1 + &2) )
  end
end

Problem1.solve
