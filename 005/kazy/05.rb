def solver(n)
  # (2..n)までの各項の素因数を計算
  ha = Hash.new{|hash, key| hash[key] = []}
  n.downto(2).each do |i|
    tmp = i
    (2..i-1).each do |j|
      while tmp % j == 0 do
        tmp = tmp / j 
        ha[i] << j
      end
    end
    if ha[i].empty?
      ha[i] << i
    end
  end

  # 各項の素因数をマージ
  result = Hash.new(0)
  ha.values.each do |arr|
    th = Hash.new(0)
    arr.each do |iter|
      th[iter] += 1
    end
    th.each do |key, value|
      result[key] = value if result[key] < value
    end
  end

  # マージした素因数から最小公倍数を計算
  result.reduce(1) {|total, (key, value)| total *= key ** value}
end

puts solver(20)
