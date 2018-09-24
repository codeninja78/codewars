=begin
Money, Money, Money 7-Kyu

Mr. Scrooge has a sum of money 'P' that wants to invest, and he wants to know how many years 'Y' this sum has to be kept in the bank in order for this sum of money to amount to 'D'.

The sum is kept for 'Y' years in the bank where interest 'I' is paid yearly, and the new sum is re-invested yearly after paying tax 'T'

Note that the principal is not taxed but only the year's accrued interest

Thought Process
First we set the variable variable years to 0. This will be our counter to keep track.
    years = 0
    
Next we can figure out the interest gained that year by multiplying the principle times the interest
    principal * interest
    
The tax for the current year will be found by finding the interest gained and multiplying it to the tax
    principal * interest * tax
    
Every year we will sum the current years principal total with it's interest and tax 
   principal = principal + (principal * interest - (principal * interest * tax))

We will increment years by one and move on to the next year until we get the desired accrued interest by tucking what we have so far into a while loop
    while principal < desired
       principal = principal + (principal * interest - (principal * interest * tax))
       years = years + 1
    end
    
Finally we can print the total years counter after the loop has completed
    puts years
    
=end

#Solution
years = 0
while principal < desired
   principal = principal + (principal * interest - (principal * interest * tax))
   years = years + 1
end
puts years