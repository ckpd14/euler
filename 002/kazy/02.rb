def solve 
  fib = Fiber.new do
    pre_num = 1
    num = 1
    loop do 
      Fiber.yield num if num.even?
      num, pre_num  = (pre_num  + num), num 
    end
  end

  sum = 0
  loop do
    num = fib.resume
    break if num > 4000000
    sum += num
  end
  sum
end

puts solve

