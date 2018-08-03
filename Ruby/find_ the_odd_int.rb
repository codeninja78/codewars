=begin
Find the Odd Int 7-Kyu

Given an array, find the int that appears an odd number of times.

There will always be only one integer that appears an odd number of times.

=end

#Solution:
seq.uniq.each do |val|
    return val if seq.count(val).odd?
end