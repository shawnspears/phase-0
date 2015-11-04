# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: An integer called guess
# Output: symbol (:high, :correct, or :low)
# Steps:
# 	Define GuessingGame class and initialize with an integer answer
# 		Raise Argument error if answer isn't an integer
# 	Define instance method #guess
# 		Return symbol depending on how guess compares to answer
# 	Define instance method #solved
#		Return true if guess was correct and false otherwise


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    if @answer.is_a?(Integer) == false
      raise ArgumentError('Argument must be a number')
    end
  end
  
  def guess(guess)
    @guess = guess
    if @guess > @answer
      p :high
    elsif @guess < @answer
      p :low
    else
      p :correct
    end
  end
  
  def solved?
    if @guess == @answer
      p true
    else
      p false
    end
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    if @answer.is_a?(Integer) == false
      raise ArgumentError('Argument must be a number')
    end
  end
  
  def guess(guess)
    @guess = guess 
    p @guess > @answer ? :high : @guess < @answer ? :low : :correct
  end
  
  def solved?
    p @guess == @answer? true : false
  end
end

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# 	I hadn't really thought of how objects in Ruby compared to real-world objects so this was an interesting reflection.
# 	
# When should you use instance variables? What do they do for you?
# 	
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# 	
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

