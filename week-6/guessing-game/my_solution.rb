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
# 	Real world objects that are within the same category, like objects in Ruby classes, have similar characteristics, or
# 	phsyical appearances, and also share the same behaviors, much like the functions within a class. For example, you
# 	could look at a category such as smart phones, which can then have methods defined within that class like make_call,
# 	or play_music, or browse_web. 
# 	
# When should you use instance variables? What do they do for you?
# 	You would use instance variables in a class when you want to utilize them across several methods in the class. They
# 	allow for accessbility within the class, so that you don't have to refer to several different variables.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# 	Flow control is used in order to give the user different options that then result in different outputs. In this
# 	challenge, it was fairly clear how flow control would be used in the guess method. Essentially the flow control was
# 	simply dictated bt the @guess instance variable and how it compared to the @answer. Since they were only really three
# 	different possible outputs (low, high, correct), designing the flow control was not difficult.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# 	Symbols were likely used for the two reasons that they are generally used for: their immutability and uniqueness.
# 	Due to the fact that the symbol cannot be changed, it behaves much more like an integer relative to a string, which
# 	helps with memory allocation as it is literally the same object in each instance that it's used.

