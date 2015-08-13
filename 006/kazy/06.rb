def solver(n)
  (1..n).reduce(:+) ** 2 -  (1..n).reduce(0){|sum,i| sum + i**2 }
end

puts solver(100)
