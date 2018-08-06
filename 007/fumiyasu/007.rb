=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10 001st prime number?

1と自分自信でしか割り切れないものをひたすら並べていく作業

=end
require "active_support/all"
require "pry"

def prime?(int,box=[])
  base = [*(2..int**1.0/2)]
  base.each do |i|
    if int % i == 0
      box << i
      base.delete_if {|b| b % i ==0}
    end
  end
  p "#{int} is prime" if box.blank?
end

def print_prime(i=2,ans=[])
  while ans.count < 10002
    if prime?(i)
      ans << i
      p ans.count
    end
    i += 1
  end
end

print_prime
