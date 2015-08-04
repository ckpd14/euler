arr = []
(2..20).each do |i|
  (2..i-1).each do |j|
    #     puts "#{i} #{j}"
    i = i / j while i % j == 0
  end
  arr << i
end
print arr
puts arr.uniq.reduce(:*)
