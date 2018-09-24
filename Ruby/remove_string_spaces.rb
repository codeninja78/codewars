=begin
Remove String Spaces 8-KYU
Simple, remove the spaces from the string, then return the resultant string.

Thought Process:
We will take the string parameter and use the delete method to remove the spaces
  delete(' ')
=end

#Solution:
def no_space(x)
  x.delete(' ')
end