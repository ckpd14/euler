def solver(pn)
  for i in 2..(pn **(1/2.0)).to_i do
    pn = pn / i while pn % i == 0
    return i if pn == 1
  end
end

puts solver(600851475143)
