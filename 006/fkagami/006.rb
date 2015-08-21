class Hoge
  def self.ans(i=1)
    ans = cal2(i) - cal1(i)
    p i,ans if ans > 100
    if ans < 100
      i += 1
      ans(i)
    end
  end

  def self.cal2(idx)
    (1..idx).inject{|a,b| a+b}**2
  end

  def self.cal1(idx,i=0,ans=[])
    while i != idx+1
      ans << i**2
      i += 1
    end
    ans.inject { |a,b| a + b }
  end
end

Hoge.ans

=begin
The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

while ans < 100
  i**2 + (i+1)
end

各2乗した和と、和の2乗を、毎回比較すれば良い

def cal1(idx,i=0,ans=[])
  while i != idx+1
    ans << i**2
    i += 1
  end
  ans.inject { |a,b| a + b }
end

和の2乗

def cal2(idx)
  (1..idx).inject{|a,b| a+b}**2
end

同じ引数で引き算をする
引き算の結果を見て評価する
okじゃないなら引数を増やす

=end
