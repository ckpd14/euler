def prime_number? a
  (2...a/2).each {|i|
    if a % i == 0
      return false
    end
  }
  return true
end

num = 600851475143

answer = (2..num/2).reduce(num) do |numerator, element|
  if prime_number? element
    while numerator % element == 0  do
      numerator = numerator / element
    end
  end
  if numerator == 1
    p element
    break
  end
  numerator
end
