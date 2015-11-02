# Pad an Array

# I worked on this challenge [with: Natasha Thapliyal]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#   The input would be three arguments: (array, integer, integer/string)

# What is the output? (i.e. What should the code return?
#   The output would be an array with the value appended to the array to meet the min_size requirement.

# What are the steps needed to solve the problem?
#   Take the array and compare to min_size
#   While array.length is less than the min_size append the value onto the array
#   End while loop when array is min_size
#   Return array
#   End method

# 1. Initial Solution

# Initial Solution Round 1
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size do
    array << value
  end
  array 
end

# Initial Solution Round 1
def pad(array, min_size, value = nil) #non-destructive
  while array.length <= min_size do
    array << value
  end
  p array
end

# 3. Refactored Solution

# Refactored Solution Round 1
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size do
    array << value
  end
  array
end

# Refactored Solution Round 2
def pad!(array, min_size, value = nil)
  p array.fill(value, array.length, min_size-array.length)
end

# Refactored Solution Round 1
def pad(array, min_size, value = nil) #non-destructive
  new_array = [] + array
  while new_array.length < min_size do
    new_array << value
  end
  p new_array
end

# Refactored Solution Round 2
def pad(array, min_size, value = nil)
  new_array = [] + array
  p new_array.fill(value, array.length, min_size-array.length)
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
#   I definitely thought that we were successful in breaking up the problem into smaller
#   portions of psuedocode that we were then able to easily translate into code. I think
#   that our initial solution especially follows the logic that we designed in our 
#   psuedocode which was awesome because we were able to think of a viable solution!

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#   Like I mentioned in my response to the first question, because our pseudocode was fairly
#   clear and succinct, it was easy to follow them almost as if they were instructions in
#   order to code out a solution. I think the difficulties with regards to translating our
#   ideas into code were mainly related to our refactored solution because it didn't follow
#   our psuedocode visibly in the syntax (though the underlying logic and ideas were still
#   there).

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#   Our initial solution actually passed the tests without any errors! This came was a surprise
#   to us actually, as we were both used to having to fix bugs in our previous challenges. I
#   think that this was the case because when we were thinking of a possible solution to the
#   challenge, we went through the logic of a potential solution while utilizing the syntax 
#   of the methods that we would actually use in translating the pseudocode.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
#   We did! We learned about the array.fill method which essentially takes whatever you
#   indicate in the argument, fills the array with it at the index you provide, which you
#   can also control the length of! It was incredibly useful in refactoring our code down
#   to a more clear and succinct solution.

# How readable is your solution? Did you and your pair choose descriptive variable names?
#   The solution is very readable, in my opinion, due to the dsecriptive variable names!
#   I suppose I shouldn't give us credit for that though because the variables were already
#   pre-determined for us in the argument section of our method.

# What is the difference between destructive and non-destructive methods in your own words?
#   To put it simply, destructive methods manipulate the object indicated (in this case
#   the array), whereas a non-destructive method would create a new object to manipulate and
#   leaves the original object unchanged.
