=begin
Growth of a Population 7-Kyu

In a small town the population is p0 = 1000 at the beginning of a year. The population regularly increases by 2 percent per year and moreover 50 new inhabitants per year come to live in the town. How many years does the town need to see its population greater or equal to p = 1200 inhabitants?

At the end of the first year there will be: 
1000 + 1000 * 0.02 + 50 => 1070 inhabitants

At the end of the 2nd year there will be: 
1070 + 1070 * 0.02 + 50 => 1141 inhabitants (number of inhabitants is an integer)

At the end of the 3rd year there will be:
1141 + 1141 * 0.02 + 50 => 1213

It will need 3 entire years.
More generally given parameters:

p0, percent, aug (inhabitants coming or leaving each year), p (population to surpass)

the function nb_year should return n number of entire years needed to get a population greater or equal to p.

aug is an integer, percent a positive or null number, p0 and p are positive integers (> 0)

Examples:
nb_year(1500, 5, 100, 5000) -> 15
nb_year(1500000, 2.5, 10000, 2000000) -> 10
Note: Don't forget to convert the percent parameter as a percentage in the body of your function: if the parameter percent is 2 you have to convert it to 0.02.

Thought Process:
There are four parameters to take into account
First step we'll take is to create the variable count to keep track of the years
    count = 0

Next we will create a while loop to iterate through every year until we've reached the population we need to surpass
  while p0 < p do
  
We'll set p0 param to equal the answer which will be the current answer plus the percentage of the increase for that year plus the amount arriving or leaving for that year
    p0 = p0 + (p0 * percent / 100).floor + aug

We will then increase the year
  count += 1

Once population is greater or equal to p we will end the loop and return the count
  return count

=end

#Solution:
def nb_year(p0, percent, aug, p)
    count = 0
  while p0 < p do
    p0 = p0 + (p0 * percent / 100).floor + aug
    count += 1
  end
  return count
end