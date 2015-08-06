defmodule Problem001 do
  def rec(x) do
    if x == 999 do
      x
    else
      if rem(x, 5) == 0 or rem(x, 3) == 0 do
        x + rec(x + 1)
      else
        rec(x + 1)
      end
    end
  end
end

IO.puts Problem001.rec(1)
