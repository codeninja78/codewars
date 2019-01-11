=begin
Vowel Count 7-KYU
Return the number (count) of vowels in the given string.

We will consider a, e, i, o, and u as vowels for this Kata.

The input string will only consist of lower case letters and/or spaces.

Thought Process:
A simple way to solve this is to use the count method 

We can easily use this method by adding all vowels to string as "aeiou"

=end

# Solution:
def getCount(inputStr)
  inputStr.count("aeiou")
end