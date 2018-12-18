=begin
Sum Without Highest and Lowest Number 8-Kyu

Sum all the numbers of the array (in F# and Haskell you get a list) except the highest and the lowest element (the value, not the index!).
(The highest/lowest element is respectively only one element at each edge, even if there are more than one with the same value!)

Thought Process:
First we want to check if the array is nil or empty. We can do this by using a method .empty?
  arr.to_a.empty?
    
If it is 0 or nil will return 0
  arr.to_a.empty? ? 0

Next we need to solve the case that array is not nil. 
We can do this by using the sort method us to easily find the lowest and highest numbers.
  arr.sort[1..-2]
  
Lastly we can use the sum method to add all numbers of the array with the exception of the lowest and highest numbers.
  arr.sort[1..-2].sum
=end

#Solution:
def sum_array(arr)
  arr.to_a.empty? ? 0 : arr.sort[1..-2].sum
end