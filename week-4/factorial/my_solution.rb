# Factorial

# I worked on this challenge [by myself, with: ].


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