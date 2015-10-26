# Factorial

# I worked on this challenge [with: Karla King].


# Your Solution Below

def factorial(n)
  counter = n
  factorial = 1
  while counter > 0
    factorial *= counter
    counter -= 1
  end
  p factorial
end

# Accepts a positive integer and multiplies them
# Count up to integer and stops
# Return to variable
# Put numbers into an array