=begin 
Format a String of Names Like 'Bart, Lisa & Maggie' 6-Kyu

Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

Example:

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''
Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.


Thought Process:
For this we will use the .map method so that we can access the objects

We will use x.values to get the values of the name keys

They want us to return with a comma after each name 
.join(", ")


Until the last name where we will use '&'
.gsub(/(.*)(,)(.*)/, '\1 &\3')

=end

#Solution:
names.map{|x| x.values}.join(", ").gsub(/(.*)(,)(.*)/, '\1 &\3')
