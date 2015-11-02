# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# 	The input would be a positive integer.

# What is the output? (i.e. What should the code return?)
# 	The output would be a comma-separated integer as a string.

# What are the steps needed to solve the problem?
# 	1. Define method separate_comma that takes an integer as an argument
# 	2. Turn the integer into a string
# 	3. Set string as variable
#	4. Split the string by 3 characters, starting at the end of the string
# 	5. Insert a comma every 3 characters of the string from the end
# 	6. Return the string variable


# 1. Initial Solution

def separate_comma(int)
  string_int = int.to_s
  insert_comma = string_int.length - 3
  while insert_comma > 0
    string_int.insert(insert_comma, ",")
    insert_comma -= 3
  end
  p string_int
end

# 2. Refactored Solution

def separate_comma(int)
  string_int = int.to_s
  insert_comma = string_int.length - 3
  while insert_comma > 0
    string_int.insert(insert_comma, ",")
    insert_comma -= 3
  end
  p string_int
end

# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# 	My process for breaking down the problem was making sure that my pseudocode was easily translatable
# 	into Ruby because that can be the most difficult step in designing a viable solution. I guess the
# 	only problem I have in this is accounting for the fact that I needed an extra variable (insert_comma)
# 	when I started to execute my idea, but that wasn't difficult.

# Was your pseudocode effective in helping you build a successful initial solution?
# 	The pseudocode definitely helped keep my logic intact, and even helped me think about which methods
# 	would help my implement the plan that I had in mind.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# 	Honestly I could not find any way of making the code more efficient without sacrificing the fact that
# 	the integer didn't have to be numbers just made of 1's and 0's. Also the methods that I researched
# 	all involved utilizing regular expressions which we weren't allowed to use.

# How did you initially iterate through the data structure?
# 	I initially iterated through the data structure using a while loop! This made the most sense as I could
# 	easily change the variable the number of times I specified in order to insert the comma every 3 characters.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# 	I will try to go back and refactor the solution to involve a new method, but for now I believe that
# 	my initial solution is very readable and efficient.
