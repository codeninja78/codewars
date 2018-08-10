=begin
Two to One 7-Kyu

Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters,

each taken only once - coming from s1 or s2. #Examples: ``` a = "xyaabbbccccdefww" b = "xxxxyyyyabklmopq" longest(a, b) -> "abcdefklmopqwxy"
a = "abcdefghijklmnopqrstuvwxyz" longest(a, a) -> "abcdefghijklmnopqrstuvwxyz" ```

Thought Process:
First we will combine the two parameters a1 and a2
    (a1+a2)
Next we will take the characters 
    .chars
    
And the simple way to check if they are unique is to use
    .uniq
    
We will then return those unique characters
    .join
    
=end

#Solution:
def longest(a1, a2)
  (a1+a2).chars.sort.uniq.join
end