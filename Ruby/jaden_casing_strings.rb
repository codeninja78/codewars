=begin
Jaden Casing Strings 7-Kyu

Jaden Smith, the son of Will Smith, is the star of films such as The Karate Kid (2010) and After Earth (2013). Jaden is also known for some of his philosophy that he delivers via Twitter. When writing on Twitter, he is known for almost always capitalizing every word.

Your task is to convert strings to how they would be written by Jaden Smith. The strings are actual quotes from Jaden Smith, but they are not capitalized in the same way he originally typed them.

Example:

Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren't Real"
Note that the Java version expects a return value of null for an empty string or null.

Thought Process:
Looking at the test cases it is easy to see that Jaden Casing is simply capitalizing each word.
We can use the split method to return an array of the each word.
Next we can use .map(&:capitalize) to capitalize each word.
Finally we will use .join to put each word back into our new sentence

=end

#Solution:
class String
  def toJadenCase
    split.map(&:capitalize).join(' ')
  end
end
