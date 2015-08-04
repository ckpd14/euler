# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

defmodule Problem4 do
  def solver(num) do
    if num == 998 do
      IO.puts num * num
    end
    solver(num-1)
  end
  def is_palindromic do

  end
end


Problem4.solver(999)
