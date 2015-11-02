# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hour on this challenge.

# 0. Pseudocode

# Input: 
# 	die = Die.new(sides) -- intialize the Die class
# 	die.sides -- indicates number of sides
# 	die.roll -- rolls die with max output sides
# Output:
# 	The output should return the random number between 1 and sides
# Steps:
# 	1. Initialize Die class with indicated sides
# 	2. Input sides greater than 1
# 	3. Raise ArgumentError if sides are less than 1
# 	4. Roll the die to return a random output between 1 and sides


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
    	raise ArgumentError.new("Number of sides can only be greater than 1")
  	end
  end

  def sides
    @sides
  end

  def roll
    Random.new.rand(1..@sides)
  end
end

# 3. Refactored Solution


class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
    	raise ArgumentError.new("Number of sides can only be greater than 1")
  	end
  end

  def sides
    @sides
  end

  def roll
    p Random.new.rand(1..@sides)
  end
end

# 4. Reflection
# What is an ArgumentError and why would you use one?
# 	An ArgumentError is raised when the arguments passed through the class do not meet the conditions that
# 	are defined as acceptable. You would use this in order to indicate to users that the class only accepts
# 	specific arguments.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# 	I had never created random integers in Ruby, so that was a new method that I implemented (very interesting
# 	-- much different than JavaScript). Random.new.rand creates a random floating integer between 0 and < 1,
# 	and Random.new.rand(>=0..max) returns a random number between the range specified.

# What is a Ruby class?
# 	A ruby class is a grouping of objects that are all characterized by the same conditions, and that can be
# 	used in the methods specified in the class. In a sense it is like a blueprint that plans exactly how each
# 	object can be created and utilized in the class methods.

# Why would you use a Ruby class?
# 	You would probably use a Ruby class if you needed to create an object that met specific conditions, and then
# 	wanted to utitlize methods that were similar characteristically in order to avoid having to deal with local
# 	variables. Instance variables make it much easier to access information and use it in related methods.

# What is the difference between a local variable and an instance variable?
# 	A local variable lives locally within the method in which it was created, and thus its scope is within the
# 	method, and cannot be accessed outside of it. An instance variable, however, is scoped to the class and
# 	therefore can be used anywhere within the class in varying methods.

# Where can an instance variable be used?
# 	An instance variable can be used anywhere within the class.
