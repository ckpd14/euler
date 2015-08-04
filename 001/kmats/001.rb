answer = (1...1000).reduce(0) do |accumulator, element|
  if element % 3 == 0 || element % 5 == 0
    accumulator + element
  else
    accumulator
  end
end

p answer
