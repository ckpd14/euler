PRIMES = [2, 3, 5, 7, 11, 13, 17, 19]

def primeFactorCountsOfNumber n
  primeFactorCounts = [0, 0, 0, 0, 0, 0, 0, 0]
  PRIMES.length.times {|i|
    p = PRIMES[i]
    while n % p == 0
      n = n / p
      primeFactorCounts[i] = primeFactorCounts[i] + 1
    end
  }
  primeFactorCounts
end

primeFactorCountsOfAnswer = [0, 0, 0, 0, 0, 0, 0, 0]

(2..20).each {|i|
  primeFactorCounts = primeFactorCountsOfNumber i
  primeFactorCountsOfAnswer.length.times {|j|
    primeFactorCountsOfAnswer[j] = primeFactorCounts[j] if primeFactorCountsOfAnswer[j] < primeFactorCounts[j]
  }
}

answer = (0..7).reduce(1) do |accumulator, element|
  accumulator * PRIMES[element] ** primeFactorCountsOfAnswer[element]
end

p answer
