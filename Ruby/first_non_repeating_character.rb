=begin
First non-repeating character 5-Kyu

Write a function named firstNonRepeatingLetter† that takes a string input, and returns the first character that is not repeated anywhere in the string.

For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, and occurs first in the string.

As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

If a string contains all repeating characters, it should return the empty string ("").

† Note: the function is called firstNonRepeatingLetter for historical reasons, but your function should handle any Unicode character.

Thought Process:
First we need to iterate through each of the characters of the string
  s.each_char do |char|

To solve this problem with the least amount of lines we will use
  return char if

The test cases show the string could have varying up and downcase letters so we will use
   s.downcase

Now we count the chars using .count and check if it occurs once
   s.downcase.count(char.downcase) < 2

=end

#Solution:
def  first_non_repeating_letter(s) 
  s.each_char do |char|
    return char if s.downcase.count(char.downcase) < 2
  end
  ""
end