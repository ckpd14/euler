def rec a, b
  if a == 1 && b == 2
    b + rec(b, a + b)
  elsif a + b > 4000000
    0
  else
    if (a + b) % 2 == 0
      a + b + rec(b, a + b)
    else
      rec(b, a + b)
    end
  end
end

p rec 1, 2
