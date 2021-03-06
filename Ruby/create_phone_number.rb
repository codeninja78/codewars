=begin
Create Phone Number 6-Kyu

Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

Example:
createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
The returned format must be correct in order to complete this challenge. 
Don't forget the space after the closing parentheses!


Thought Process:
We can print joined numbers with the spaces and dash

First, we will need to include parentheses
    ()

Next we'll group the numbers we'll print out
    str[0..2]

Using the .join method we can will {#{str[0..2].join} join the first three indexes of the array

Using this method we can go through the rest of the array. In this way we can create the solution in one line.
=end

#Solution:
(#{str[0..2].join}) #{str[3..5].join}-#{str[6..10].join}
