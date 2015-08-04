defmodule Problem001 do
  def solve do
    IO.puts Enum.reduce(Enum.filter(1..999, &(rem(&1, 3) == 0 || rem(&1, 5) == 0)), 0, &+/2)
  end
end

Problem001.solve
