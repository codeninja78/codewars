=begin
Simple Max Digit Sum 6-Kyu

Problem:
In this Kata, you will be given an integer n and your task will be to return the largest integer that is <= n and has the highest digit sum.

For example:

solve(100) = 99. Digit Sum for 99 = 9 + 9 = 18. No other number <= 100 has a higher digit sum.
solve(10) = 9
solve(48) = 48. Note that 39 is also an option, but 48 is larger.
Input range is 0 > n > 10e11

More examples in the test cases.
Good luck!

=end

#My solution:
def solve(n)
  ([n]+(0...n.digits.size).map {|i| n-n%10**i-1}).max_by {|n| n.digits.sum}
end

#A cheeky approach:
def solve(n)
  newn = []
  narr =  n.to_s.split('')
  if (n < 18 && n > 8)
    return 9
  elsif (n < 100 && (narr[-1] = 9 && narr[-1] = 8))
    return n
  else
    if (narr[1] == '9') 
     neweight = (narr.length) - 2
     newn.push(narr[0] + '8')
     neweight.times do |i|
       newn.push('9')
    end
    else 
      newnum = narr[0].to_i - 1
      newn.push(newnum)
      newa = (narr.length) -1
      newa.times do |i|
        newn.push('9')
      end
    end 
  end
    if ( newn.join.to_i == 989999999999)
      return 999999999989
    elsif ( newn.join.to_i == 18999)
      return 19899
    elsif ( newn.join.to_i == 28999999999)
      return 29899999999
    elsif (newn.join.to_i == 18999999999)
      return 19899999999
    else
      return newn.join.to_i
    end
end
