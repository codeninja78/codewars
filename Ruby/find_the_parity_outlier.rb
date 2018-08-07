=begin
Find The Parity Outlier 7-Kyu

You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)

Thought Process:
A simple way to check is if there is more than one even integer. 
integers.count(&:even?) > 1

If true we can find the one odd integer.
 integers.find(&:odd?)
 
If false we can find the even one.
integers.find(&:even?)


=end

#Solution:
def find_outlier(integers)
  integers.count(&:even?) > 1 ? integers.find(&:odd?) : integers.find(&:even?)
end