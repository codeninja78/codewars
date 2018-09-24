=begin
Counting sheep... 8-KYU
Consider an array of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).

For example,

[true,  true,  true,  false,
  true,  true,  true,  true ,
  true,  false, true,  false,
  true,  false, false, true ,
  true,  true,  true,  true ,
  false, false, true,  true]
The correct answer would be 17.


Thought Process:
A simple way to solve this is to count the amount of true in the array.

This can be done easily in the following way:
array.count(true)
=end

#Solution:
def countSheeps array
    array.count(true)
end