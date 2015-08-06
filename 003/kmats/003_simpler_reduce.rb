def prime_number? a
  (2...a/2).each {|i|
    if a % i == 0
      return false
    end
  }
  return true
end

num = 600851475143

answer = (2..num/2).reduce([num, 1]) do |array, element|
  if prime_number? element
    while array[0] % element == 0  do
      array[0] = array[0] / element
      array[1] = element
    end
  end
  if array[0] == 1
    p array[1]
    break
  end
  array
end
