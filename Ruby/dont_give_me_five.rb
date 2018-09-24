=begin
Don't give me five!
In this kata you get the start number and the end number of a region and should return the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!

Examples:

1,9 -> 1,2,3,4,6,7,8,9 -> Result 8
4,17 -> 4,6,7,8,9,10,11,12,13,14,16,17 -> Result 12


Thought Process:
First we will our counter n to 0. This will hold the count of numbers that don't contain '5'
    n = 0

Next we will iterate through the number range start_ to end_
    (start_..end_).each{ |i| }
    
Now we will add 1 to count through each iteration
     n += 1

We will now place condition that we will not add to the counter if we can find '5'.
This can easily be done by changing i to string
    unless i.to_s.include?('5')

=end

#Solution:
n = 0
(start_..end_).each{ |i| n += 1 unless i.to_s.include?('5') }
return n