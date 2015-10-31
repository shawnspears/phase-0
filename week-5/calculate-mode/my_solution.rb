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
end


# 4. Reflection