defmodule Problem002 do
  def rec(a, b) do
    cond do
      a == 1 and b == 2 ->
        b + rec(b, a + b)
      a + b > 4_000_000 ->
        0
      true ->
        if rem(a + b, 2) == 0 do
          a + b + rec(b, a + b)
        else
          rec(b, a + b)
        end
    end
  end
end

IO.puts Problem002.rec(1, 2)
