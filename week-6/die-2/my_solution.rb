# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: One of the strings from the array
# Steps:
# 	Define a method initialize with array labels
# 	Raise ArgumentError if initialized with empty array
# 	Roll dice to select a random value from the array
# 	Return the value

# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if @labels == []
      raise ArgumentError.new("Can not be intialized with an empty array")
    end
  end

  def sides
    @labels.length
  end

  def roll
    p @labels[Random.new.rand(0..@labels.length-1)]
  end
end

# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    if @labels == []
      raise ArgumentError.new("Can not be intialized with an empty array")
    end
  end

  def sides
    @labels.length
  end

  def roll
    p @labels[Random.new.rand(sides)]
  end
end

# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# 	I didn't have to change very muuch between this die class and the last one other than the fact
# 	that in this challenge I had to account for the fact that the class had to be initialized with
# 	an array argument rather than an integer. Thus, I had to made the ArgumentError condition to be
# 	equal to an empty array, and the sides to be defined as @labels.length because the number of sides
# 	in the die would be equal to the array length, or the number of values in the array.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# 	It is reflective of the fact that if you have code that is easily modifiable, you can adapt it to
# 	function in different ways in order to accept different inputs and return different outputs. In 
# 	these die challenges, the function of the Die class was essentially the same, however the input/output
# 	was different, so the slight changes just show how significant modifying existing code is.

# What new methods did you learn when working on this challenge, if any?
# 	I honestly used the same methods that I used in the last die challenge, so I really didn't learn
# 	of any new methods to implement in this challenge. Random.new.rand again provides you with a random
# 	floating int including 0 and excluding 1. Passing a single integer as an argument through this method
# 	provides you with a number between 0 and integer, excluding the integer. Thus, passing sides through
# 	this method is equivalent to passing the length of the array, excluding the length which allows
# 	for the max number allowed to be equal to the last index.

# What concepts about classes were you able to solidify in this challenge?
# 	I was able to solidify the use of instance variables, as for some reason it made much more sense
# 	to me this time around while going through the challenge.
