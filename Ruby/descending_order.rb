=begin

Descending Order 7-Kyu

Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

Examples:
Input: 21445 Output: 54421

Input: 145263 Output: 654321

Input: 1254859723 Output: 9875543221


The first thing that came to mind is sort
n.to_s.chars.sort

Next steps:
Add .reverse the output because it will auto print in ascending order
Add .join because it's an array currently
Add .to_i because it's 

For beginners a good resource to learn about .sort is:
http://www.rubyguides.com/2017/07/ruby-sort/

=end


#Complete Solution:
n.to_s.chars.sort.reverse.join.to_i
