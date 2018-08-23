=begin Return Negative 8-Kyu

In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?

Example:

makeNegative(1); # return -1
makeNegative(-5); # return -5
makeNegative(0); # return 0

Thought Process:
First we need to check if a number is 0 or negative
    num <= 0 

Next we will print the number if it is either 0 or negative
     ? num
     
Else we will multiply the number by -1 to return the number in negative form
    : num * -1

=end

#Solution

def makeNegative(num)
  num <= 0 ? num : num * -1
end


