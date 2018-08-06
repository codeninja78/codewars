=begin
Exes and Ohs 7-Kyu

Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

Examples input/output:

XO("ooxx") => true
XO("xooxx") => false
XO("ooxXm") => true
XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
XO("zzoo") => false


Thought Process:
We want to check whether the count of 'x's is the same as 'o's. 

This made me think immediately of using the comparison operator in Ruby ==
    x count == o count

The test cases show there will be upper and lower cases.

We will use the .downcase method so that we can now easily use .count()  

We just need to print true or false so we will end up with the following 

=end

# Solution:
def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
end