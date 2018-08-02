=begin
Complementary DNA  7-Kyu

Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for the development and functioning of living organisms.

If you want to know more http://en.wikipedia.org/wiki/DNA

In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". You have function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).

DNA_strand ("ATTGC") # return "TAACG"

DNA_strand ("GTAT") # return "CATA"


Thought Process:
This Kata wants us to replace certain chars with their desired output
Best way I know t do this is gsub:
    dna.gsub()

A good resource for learning about it as a beginner is:
https://medium.com/launch-school/ruby-methods-string-gsub-271f865317f5

Next we'll fill in the chars we want to replace:
(/[ATGC]/, "A" => "T", "T" => "A", "C" => "G", "G" => "C")

=end

#Complete Solution:
dna.gsub(/[ATGC]/, "A" => "T", "T" => "A", "C" => "G", "G" => "C")
