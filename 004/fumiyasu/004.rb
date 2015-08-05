class Palindrome
  def self.find_palindrome(digit)
    range = [*(10**(digit-1)..10**digit - 1)]
    result = []

    range.each do |p|
      range.each do |q|
        result << p * q
      end
    end

    p result.select {|n| eval appender(digit)}.max
  end

  def self.appender(digit,idx=0,ndx=-1,result="")
    until ndx == -digit-1 do
      result << "n.to_s[#{idx}] == n.to_s[#{ndx}]"
      idx += 1
      ndx -= 1
      result << " && " unless ndx == -digit-1
    end
    result
  end
end

Palindrome.find_palindrome(3)
#906609
