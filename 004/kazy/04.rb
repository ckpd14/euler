def solver(ori, i, arr)
  return arr.max if ori == i
  ((ori - i)..ori).each do |iter|
    arr << (ori - i) * iter if is_palindromic(((ori - i) * iter).to_s)
  end
  solver(ori, i+1, arr)
end

def is_palindromic(s)
  s[0...(s.length.to_f / 2).ceil] == s[s.length / 2..-1].reverse
end

puts solver(999, 1, [])
