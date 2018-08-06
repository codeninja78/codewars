=begin
Sum of Digits / Digital Root 6-Kyu

In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has two digits, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Thought Process:
We need to return a single digit. The most simple way I came up with is:
    n < 10 
    
If n is below 10 we will return n. Otherwise we will add the digits together.

We can do this with recursion
    digital_root(n.to_s.split(//).map(&:to_i).inject(:+))

Breaking this down into smaller chunks:
First we turn the number to string so we can use the split method
    n.to_s
    
The split method separates each char
    n.to_s.split(//)
    
Using .map($:to_i) we are able to turn into integers 

Using inject we can add them together
    n.to_s.split(//).map(&:to_i).inject(:+)

To have the number continue to sum its digits we wrap what we have so far in the function 
    digital_root()

=end

#Complete Solution:
def digital_root(n)   
   n < 10 ? n : digital_root(n.to_s.split(//).map(&:to_i).inject(:+))
end