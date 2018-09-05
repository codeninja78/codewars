=begin
Find the smallest integer in the array 8-KYU

Given an array of integers your solution should find the smallest integer.

For example:

Given [34, 15, 88, 2] your solution will return 2
Given [34, -345, -1, 100] your solution will return -345
You can assume, for the purpose of this kata, that the supplied array will not be empty.

Thought Process:
We want to find the smallest integer which we can easily do by the sort method
    arr.sort

Next we can just take the first index from the sorted array to get our answer
    arr.sort[0]

=end

#My Solution:
def find_smallest_int(arr)
  arr.sort[0]
end