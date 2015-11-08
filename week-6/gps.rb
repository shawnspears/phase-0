# # Your Names
# # 1) Shawn Spears
# # 2) Ryan Ho

# # We spent 1 hour on this challenge.

# # Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  # Iterating through library Hash and checking if item_to_make exists in Hash, using error_counter
  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  # Checking, based on error_counter, if item_to_make exists in library Hash. If not, it raises an ArgumentError
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # Returns an array with values associated with the key indicated.
  # Returns modulus of order quantity divided by serving size
  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size

  # If number of servings is evenly divisble by serving size return number of items to make.
  # If not, then return number of leftover ingredients plus suggested option of what we can do for the leftover ingredients.
  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end


# REFACTOR

def serving_size_calc(item_to_make, servings_needed)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false


  serving_size = library[item_to_make]
  servings_still_needed = servings_needed % serving_size

  
  if servings_still_needed == 0
    return "Calculations complete: Make #{servings_needed/serving_size} of #{item_to_make}(s)"
  else
    return "Calculations complete: Make #{servings_needed/serving_size} of #{item_to_make}(s), you have #{servings_still_needed} servings still needed to fufill the order. Suggested baking items: #{servings_needed} cookie(s)"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# Reflection
# What did you learn about making code readable by working on this challenge?
#   I definitely learned that unless you make your code readable, anyone reading your code
#   or even yourself really just going back into your code will have a ridiculously hard time
#   trying to understand what exactly your code does. Even though we went through each
#   portion of the code separately and commented out what the function of that particular
#   section of code did, it was still difficult to understand at times exactly what I was
#   reading simply because the variable names were insanely horrific.

# Did you learn any new methods? What did you learn about them?
#   Sadly I did not learn any new methods in refactoring the code, though I did learn that
#   you can throw a bang in front of a hash method (I'm assuming this just generally works
#   across data structures) and it will pretty much will act as a "does not" statement. 
#   For example writing ` !library.has_key?(key) ` will ask if it doesn't have the key, 
#   which is pretty nifty.

# What did you learn about accessing data in hashes? 
#   Nothing new in particular, though I did realize that there were a lot of methods
#   specific to hashes for accessing data contained within them. The has_key? method
#   is just one example of this which makes specificity in code much easier.

# What concepts were solidified when working through this challenge?
#   I feel like I have a pretty strong grasp on accessing data in hashes now, as well
#   as being able to make my code readable and variables relevant to the code. This 
#   was far too much of a nightmare for me to not make my variables very specific 
#   from here on out, especially if someone new is reading my code.
