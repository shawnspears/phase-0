# Release 1: Pseudocode

# Input: An array
# Output: Multiple arrays with 5 elements per array

# 1. Create array of island foxes
# 2. Break up array into groups of five
# 3. Put each group into an array
# 4. Print the groups

# Release 2: Initial Solution

island_foxes = 
["Abraham Clark", "Alan Alcesto", "Aleksandra Nowak", "Alexander Williams", "Alicia Quezada", "Amaar Fazlani",
"Becky Lehmann", "Bernice Anne W Chua", "Brian Bensch", "Brian Wagner", "Carolina Medellin", "Chris Gomes",
"Chris Miklius", "Christopher M. Guard", "Clinton Weber", "Daniel Andersen", "Darius Atmar", "Edward Gemson",
"Fatma Ocal", "Gregory Wehmeier", "Igor Kazimirov", "Jacob Crofts", "James Artz", "Jon Clayton", "Josh Shin",
"Joshua Virgil Monzon", "Karla King", "Kris Albert Lee", "Logan Bresnahan", "Luis Fernando Plaz", "Malia Lehrer",
"Michael Duke", "Michael Whelpley", "Natalie Polen", "Natasha Thapliyal", "Nicola Beuscher", "Nil Thacker",
"Nimi Samocha", "Peter N Wood", "Pratik Shah", "Ryan Ho", "Ryan Zell", "Sabrina Unrein", "Sasha Tailor", 
"Scott Chou", "Shawn Spears", "Shea Munion", "Solomon Fernandez", "Tal Schwartz", "Timothy Meixell",
"Trevor Newcomb", "Walter Kerr", "Will Granger", "William Brinkert", "Zach Schatz"]

def accountability_groups(cohort)
	p cohort.each_slice(5).to_a
end

# Release 4: Refactor
# 	Mainly because our accountability groups appear to be random, and not organized alphabetically.

def accountability_groups(cohort)
	p cohort.shuffle.each_slice(5).to_a
end

# Release 6: Reflection
# What was the most interesting and most difficult part of this challenge?
# 	I think that the most interesting thing about this challenge is that you definitely could have gone about
# 	using a different data structure, or retrieving the data in a different method, but I wanted to keep my
# 	solution fairly simple and not overthink it. Perhaps there was a more efficient way of doing this, but I'm
# 	not sure how else we could have gone about entering in our names other than going through the time consuming
# 	process of just copy/pasting them from the cohort list on canvas.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# 	I feel as though I am more confident in writing psuedocode, but also more confident in selecting methods
# 	that I know will give me the desired output. I think that initially writing down down that can be easily
# 	converted into methods is the most efficient thing that you can do.

# Was your approach for automating this task a good solution? What could have made it even better?
# 	I thought that my approach to randomize the groups was a good solution as the code was still succinct and 
# 	clean. I think that adding in a method that deletes members from accountability groups would have made it
# 	more useful, so that is a future feature to implement.

# What data structure did you decide to store the accountability groups in and why?
# 	I decided to store the accountability groups in an array, as I thought that it would make my intial solution
# 	easy to manipualte into groups of 5 people.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# 	I did! I was unaware of the shuffle method (non-destructive) until this challenge, as I knew that it would
# 	be unrealistic to keep the groups in alphabetical order, as that isn't how it occurs in our cohorts. The method
# 	be easily be implemented to an array (array.shuffle) in order to randomize the element order.
