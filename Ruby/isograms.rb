=begin
Isograms 7-Kyu

An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

is_isogram("Dermatoglyphics" ) == true
is_isogram("aba" ) == false
is_isogram("moOse" ) == false # -- ignore letter case


Thought Process:
First we will create a variable letters to store our answer. 
We will set it to equal string for now.
  letters = string

Since consecutive doesn't matter, our next step will be downcase the string. 
  string.downcase
  
We will next use the .chars method to return an array of the characters of our string
  string.downcase.chars

Now we have our letter in an array we can now use the .uniq method.
In the test cases they show they want us to return true or false so our next line will be:
  letters == letters.uniq

=end

#Solution:
def is_isogram(string)
  letters = string.downcase.chars
  letters == letters.uniq
end