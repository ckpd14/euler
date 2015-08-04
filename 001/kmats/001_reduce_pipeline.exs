defmodule Problem001 do
  def solve do
    1..999 |>
      Enum.filter(&(rem(&1, 3) == 0 || rem(&1, 5) == 0)) |>
      Enum.reduce(0, &+/2) |>
      IO.puts
  end
end

Problem001.solve
