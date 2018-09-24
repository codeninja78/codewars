=begin
Simple Fun 40: Timed Reading 7-Kyu

Timed Reading is an educational tool used in many schools to improve and advance reading skills. A young elementary student has just finished his very first timed reading exercise. Unfortunately he's not a very good reader yet, so whenever he encountered a word longer than maxLength, he simply skipped it and read on.

Help the teacher figure out how many words the boy has read by calculating the number of words in the text he has read, no longer than maxLength.

Formally, a word is a substring consisting of English letters, such that characters to the left of the leftmost letter and to the right of the rightmost letter are not letters.


Thought Process:
First we need to find words and make sure not to include special characters and get the count
    text.scan(/\w+/).count 

Next for each of the words we find if that word is less than or equal to the max_length
 |str| str.size <= max_length

=end
#Solution:

def timed_reading(max_length, text)
  text.scan(/\w+/).count { |str| str.size <= max_length }
end