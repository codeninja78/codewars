=begin
The Feast of Many Beasts 8-Kyu

All of the animals are having a feast! Each animal is bringing one dish. There is just one rule: the dish must start and end with the same letters as the animal's name. For example, the great blue heron is bringing garlic naan and the chickadee is bringing chocolate cake.

Write a function feast that takes the animal's name and dish as arguments and returns true or false to indicate whether the beast is allowed to bring the dish to the feast.

Assume that beast and dish are always lowercase strings, and that each has at least two letters. beast and dish may contain hyphens and spaces, but these will not appear at the beginning or end of the string. They will not contain numerals.

Thought Process:
For the test cases we want to check if the beast's first letter of name 
    beast[0]
And last letter 
    beast[-1]
    
Are equal (Test casses want us to return true or false)
    ==

To the dish's first and last letter
     dish[0] + dish[-1]

=end

#Solution:
beast[0] + beast[-1] == dish[0] + dish[-1]
