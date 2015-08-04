defmodule Problem3 do
  def solver(i, num) do
    case {i, num, rem(num, i)} do
      {i,   1, _}  -> IO.puts i
      {i, num, 0}  -> solver(i, div(num, i))
      {i, num, _}  -> solver(i+1, num)
    end
  end
end

Problem3.solver(2, 600851475143)
