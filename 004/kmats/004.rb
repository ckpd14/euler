def palindromic? n
  s = n.to_s
  (s.length / 2).times {|i|
    if s[i] != s[s.length - 1 - i]
      return false
    end
  }
  true
end

a = 999
b = 999
min = 100
max = 0

a.step(min, -1) {|i|
  b.step(i, -1) {|j|
    product = i * j
    if palindromic? product and product > max
      max = product
    end
  }
}

p max
