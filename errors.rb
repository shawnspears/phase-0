# Analyze the Errors

# I worked on this challenge [by myself.
# I spent [1.5] hours on this challenge.

# --- error -------------------------------------------------------

"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# 	This occurs in errors.rb.
# 2. What is the line number where the error occurs?
#   The error occurs on line 170.
# 3. What is the type of error message?
#   It is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
#   The interpreter indicates that there was an unexpected end of input, and that it was expecting an end somewhere.
# 5. Where is the error in the code?
#   The error supposedly occurs at the end of the last line of code because it is expecting an end.
# 6. Why did the interpreter give you this error?
#   The interpreter gave me this error because the code is missing an end to the while loop, thus allowing it go on infinitely.

# --- error -------------------------------------------------------

south_park

# 1. What is the line number where the error occurs?
#   The error occurs on line 35.
# 2. What is the type of error message?
#   Undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#   'south_park' is undefined for main:Object (NameError)
# 4. Where is the error in the code?
#   The local variable created had to be assigned a value.
# 5. Why did the interpreter give you this error?
#   The south_park variable was not assigned a value.

# --- error -------------------------------------------------------

cartman()

# 1. What is the line number where the error occurs?
#   The error occurs on line 50.
# 2. What is the type of error message?
#   Undefined method error.
# 3. What additional information does the interpreter provide about this type of error?
#   It says that 'cartman' is undefined for main:Object (NoMethodError).
# 4. Where is the error in the code?
#   cartman() has not been defined which is the error.
# 5. Why did the interpreter give you this error?
#   A method needs to be defined before calling them.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#   The error occurs on line 65.
# 2. What is the type of error message?
#   Wrong number of arguments (1 for 0).
# 3. What additional information does the interpreter provide about this type of error?
#   It says that its an (ArgumentError) from errors.rb:69.
# 4. Where is the error in the code?
#   The method cartmans_phase is being called with an argument.
# 5. Why did the interpreter give you this error?
#   There is an attempted argument for a method that doesn't accept it.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says

# 1. What is the line number where the error occurs?
#   The error occurs on line 84.
# 2. What is the type of error message?
#   Wrong number of arguments (0 for 1).
# 3. What additional information does the interpreter provide about this type of error?
#   (ArgumentError) from errors.rb:88.
# 4. Where is the error in the code?
#   When the method is called, there is no argument being passed.
# 5. Why did the interpreter give you this error?
#   The method cartman_says requires one argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#   The error occurs on line 105.
# 2. What is the type of error message?
#   Wrong number of arguments (1 for 2).
# 3. What additional information does the interpreter provide about this type of error?
#   (ArgumentError) from errors.rb:109.
# 4. Where is the error in the code?
#   There is only one argument being passes in cartmans_lie which requires two.
# 5. Why did the interpreter give you this error?
#   The number of arguments being passed in calling a method needs to be the same as the arguments defined in the method.

# --- error -------------------------------------------------------

5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#   The error occurs on line 124.
# 2. What is the type of error message?
#   String can't be coerced into Fixnum.
# 3. What additional information does the interpreter provide about this type of error?
#   (TypeError) from errors.rb:124.
# 4. Where is the error in the code?
#   You can not multiple 5 by a string.
# 5. Why did the interpreter give you this error?
#   You can multiply the string five times if you put the string before the integer, but you can't multiply 5 by a string.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#   The error occurs on line 139.
# 2. What is the type of error message?
#   Divided by 0.
# 3. What additional information does the interpreter provide about this type of error?
#   (ZeroDivisionError) from errors.rb:139.
# 4. Where is the error in the code?
#   The attempt at dividing 20 by 0. 
# 5. Why did the interpreter give you this error?
#   This makes absolutely no logical sense in mathematics. The concept of dividing anything by 0 (other than 0) results in something that is "undefined".

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#   The error occurs on line 155.
# 2. What is the type of error message?
#   Cannot load such file.
# 3. What additional information does the interpreter provide about this type of error?
#   (LoadError) from ~/phase-0/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
#   The method tries to look for a file that doesn't exist in the given relative path.
# 5. Why did the interpreter give you this error?
#   The file is not being found as the relative path is not correct.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# 1. Which error was the most difficult to read?
#    Probably the second error where the interpreter indicates that there was an unexpected 
#    end of input, and that it was expecting an end somewhere. That was somewhat confusing 
#    as it classified it as a syntax error, whereas I would have assumed for the error name
#    to be more associated with the actual error. It also tripped me up that the error was 
#    located at the end of the page.

# 2. How did you figure out what the issue with the error was?
#    Through reading the additional information, it became clear (at least in these cases)
#    exactly why the error was there. This was especially the case for the argument errors
#    that even told you how many arguments you made/expected.

# 3. Were you able to determine why each error message happened based on the code? 
#    Thankfully I was! I thought that additional information, as well as the fact that the
#    interpreter tells you where the error is really benefits the developer in determining
#    what exactly happened and how to fix it.

# 4. When you encounter errors in your future code, what process will you follow to help you debug?
#    To be honest, this entire process in locating where the bug is, and analyzing the
#    information given to you by the interpreter was invaluable! Will be definitely utilizing
#    this process in debugging.


