# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Edward Gemson]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
#  The input would be the string/int array.

# What is the output? (i.e. What should the code return?)
#  The highest frequency index in the array.

# What are the steps needed to solve the problem?
#  Create a hash that counts the values in the array
#  Add a value of 1 for each time the hash finds key
#  Find max value in hash
#  Print the key associated with the max value


# 1. Initial Solution

def mode(array)
  counter = Hash.new(0)
  array.each do |i|
    counter[i] += 1
  end
  counter.each do |key, value|
    if value == counter.values.max
      p key
    end
  end
end


# 3. Refactored Solution

def mode(array)
  counter = Hash.new(0)
  array.each do |i|
    counter[i] += 1
  end  
  mode = []
  counter.each do |key, value|
    if value == counter.values.max
      mode << key
    end
  end
  p mode
  if mode == array
    p "All occur with equal frequency"
  end
end


# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
#   My partner and I decided to implement a hash because we figured it would be the most intuitive
#   data structure in order to indicate the number of times that a particular number comes up in an
#   array. In our code we utilized Hash.new(0) as a counter that incremented +1 each time it iterated
#   over the same key, or counter[i]. We were then able to take the counter hash and select the max
#   value, which also happens to be the mode. In order to return the output as an array, we created
#   an array with the keys associated with the max value of the couter hash and returned that.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
#   I definitely think that each time I pseudocode it becomes slightly easier to be able to write out
#   a solution that is more easily translatable into code because I know what is more viable at this point.
#   We were able to psuedocode something that I thought was clear and succinct. Our initial solution
#   is really reflective of that, as it follows our steps fairly closely.

# What issues/successes did you run into when translating your pseudocode to code?
#   As I mentioned preiously, we didn't really run into many problems while translating our pseudocode
#   into our initial solution because we talked through a possible solution while keeping a result in
#   mind. I think running through a refactor was more difficult because we wanted the output to be an
#   array.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#   We used the array.each method in order to iterate through the array and increment the values to counter
#   for each index (key). We then used the hash.each method in order to iterate through each of the values 
#   and find the max value, and then return its associate key (or the mode). Unfortunately we weren't able
#   to find any other iterative methods that did something similar -- which I'm sure exist. I'll look
#   through the docs in the near future and see if there is something more efficient to implement.
