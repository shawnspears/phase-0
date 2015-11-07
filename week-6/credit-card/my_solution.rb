# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Sabrina Unrein].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: An integer with 16 digits
# Output: true or false
# Steps: 

# 1. Initialize
# Set instance variable to argument in initialize
# Raise ArgumentError if card length is not 16 digits

# 2. Double integers
# Turn integer into an array with values with separate digits
# Double the values with even indices
# Split the doubled values with two digits

# 3. Sum 
# Sum array

# 4. Validate card
# Check to see if sum of array is evenly divisble by 10 
# Output true or flase

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(integer)
    @card_number = integer.to_s.split('').map(&:to_i)
    @doubles = doubles
    @sum = sum
    if @card_number.length != 16
      raise ArgumentError.new('Must be 16 characters')
    end
  end
  
  def doubles
 @doubles = @card_number.map.with_index { |n, i| n * (i.even? ? 2 : 1) }
   @join = @doubles.map {|x| x.to_s}.join
   @split = @join.to_s.split('').map(&:to_i)
  end

  def sum
  @sum = 0
    @split.each do
      |a| @sum += a
    end
    @sum
  end
  
  def check_card
    @sum % 10 == 0
  end
  
end

# Refactored Solution

class CreditCard
  def initialize(integer)
    @card_number = integer.to_s.split('').map(&:to_i)
    @doubles = doubles
     @sum = sum
    if @card_number.length != 16
      raise ArgumentError.new('Must be 16 characters')
    end
  end
  
  def doubles
 @doubles = @card_number.map.with_index { |n, i| n * (i.even? ? 2 : 1) }.join('')
    @split = @doubles.to_s.split('').map(&:to_i)
  end

  def sum
    @sum = @split.reduce(:+)
  end
  
  def check_card
    @sum % 10 == 0
  end
  
end

# Reflection

# What was the most difficult part of this challenge for you and your pair?
# 	The most difficult part of the challenge for my pair and I was attempting to figure out
# 	a viable solution to the method that doubles the even indices, as well as the method that 
# 	splits the two-digit values so that they could added to form a sum. We intially started
# 	the challenge thinking it wouldn't be too difficult considering we were able to logic
# 	through what we had to do in words. We tried iterating through the @card_number array using
# 	a variable called index that increased by a value of two, but that didn't work as planned.
# 	Thankfully we researched a bit, and learned about the with_index method that made this 
# 	much easier to deal with.

# What new methods did you find to help you when you refactored?
# 	Well, this wasn't in the refactor, but a new method that we learned about in our intial
# 	solution (because we were having a ridiculous time trying to iterate through the indices)
# 	was the with_index method that allowed us to access the index of the array values and use
# 	it as a condition for doubling the digits. Another method that helped us when we refactored
# 	was the reduce method that essentially summed up all of the values in the array with the 
# 	(:+) syntax.

# What concepts or learnings were you able to solidify in this challenge?
# 	I guess the concept that was most solidified in this challenge was accessing and using
# 	instance variables. For some reason our sum method wasn't working until we created it inside 
# 	of our initialize method, so I should probably get some clarification on that. Otherwise,
# 	I think it was useful to be introduced to needing to manipuate an integer to an array, and
# 	then needing to turn those integers into strings in order to join and separate them. There
# 	was clearly a lot of object manipulation that became frustrating at times, though it was 
# 	a great experience to learn from.
