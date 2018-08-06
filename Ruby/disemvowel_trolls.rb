=begin
Disemvowel Trolls 7-Kyu

Trolls are attacking your comment section!

A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

Your task is to write a function that takes a string and return a new string with all vowels removed.

For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

Note: for this kata y isn't considered a vowel.


Thought Process:
For this task it is good to go through ruby guides.

As you learn more about string manipulation, it is easy to find the .delete method.

Using this method to delete out specified characters you can come up with the solution easily in one line.


=end


#More Simple:
def disemvowel(str)
  str.delete('aeiouAEIOU')
end