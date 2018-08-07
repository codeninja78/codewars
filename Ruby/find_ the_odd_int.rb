=begin
Find the Odd Int 7-Kyu

Given an array, find the int that appears an odd number of times.

There will always be only one integer that appears an odd number of times.

Thought Process:
We can track the unique integers using .uniq
    seq.uniq

We can track the count by first iterating through each integer using
    .each do |val|
    
If we find the case of an itegers occurance we will return that value
    return val 

We want to count each val using .count method
    .count(val)

To easily check if the count is odd or not simply using .odd?

=end

#Solution:
seq.uniq.each do |val|
    return val if seq.count(val).odd?
end