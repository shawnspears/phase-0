# I worked on this challenge [with: Natalie Polen].
# I spent [1.5] hours on this challenge.

# # RELEASE 2: NESTED STRUCTURE GOLF
# # Hole 1
# # Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts: 1
# # ============================================================

p array[1][1][2][0]

# # ============================================================

# # Hole 2
# # Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts: 1
# # ============================================================

p hash[:outer][:inner]["almost"][3]

# # ============================================================


# # Hole 3
# # Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# # attempts: 1
# # ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |num|
  if num.is_a?(Array)
    num.map! { |sub_num| sub_num += 5 }
  else
    num += 5
  end
end

p number_array

#Refactored

number_array.map! do |num|
  num.is_a?(Array) ? num.map! { |sub_num| sub_num += 5 } : num += 5
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def add_ly(startup_name)
startup_name.map! do |word|
  if word.is_a?(Array)
    word.map! do |sub_word|
      if sub_word.is_a?(Array)
        sub_word.map! { |sub_sub_word| sub_sub_word += "ly" }
      else
        sub_word += "ly"
      end
    end
  else
    word += "ly"
  end  
end
end

# Reflection
# What are some general rules you can apply to nested arrays?
# 	If you are trying to manipulate a nested array with a particular method, I have found 
# 	that you essentially need to utilize the method the method twice via iteration and
# 	checking if the element type is an array. That's pretty much the only thing that I was
# 	able to take from both release 3 and 4.

# What are some ways you can iterate over nested arrays?
# 	You can iterate through nested arrays by using the the map method if you're trying to 
# 	modify the values within the array, and then using an if statement (within an if statement
# 	if you need to access an array within an array WITHIN an array -- array-ception!)
# 	underneath the map method. This allows for the program to check if there's an array value
# 	within the array so that you can access it.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# 	We used methods that we were already familiar with simply because we thought that they would
# 	be most efficient for the particular function that we were trying to build. The map method
# 	as I described earlier, easily modified the original arrays while also taking nested arrays
# 	into considerating through if/else conditional statements. 
