=begin
Persistent Bugger 6-KYU

Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

For example:

 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number
 

Thought Process:
I've done a similar problem where instead of multiplying the digit I had to sum the digit.

Using the same logic first we will check if the number is less than 10 
    n < 10 

If the number is less than 10 we will return 0 like the examples have asked us to do
    ? 0
    
Else we will use recursion to loop until we receive a single digit.

We will do this by first changing the number parameter into a string so that we can manipulate each digit of the integer
    persistence(n.to_s.split(''))

Next we will use the .map method to iterate through the length of the split digits as integers
    .map(&:to_i)
    
Finally this we will us .reduce so that we can multiply those digits
    .reduce(:*)

=end

#Solution:
def persistence(n)
  n < 10 ? 0 : 1 + persistence(n.to_s.split('').map(&:to_i).reduce(:*))
end