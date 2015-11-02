# RELEASE 1: PSUEDOCODE

# Create a new hash.
# 1. Define new method that creates a new hash.

# Add item with quantity.
# 1. Define new method with arguments (item, quantity)
# 2. Add new key/value pair into old hash.

# Remove item from list.
# 1. Define new method with arguments (item, quantity)
# 2. Remove existing key/value pair.

# Update quantity for existing quantity.
# 1. Define new method with arguments (item, quantity)
# 2. Add new key/value pair into old hash, overwriting old value.

# Print the list.
# 1. Create new method to display the list.
# 2. Loop through the hash and puts each line.

# RELEASE 2: INITIAL SOLUTION

def new_list
  grocery_list = {}
end

def add_item(item, quantity, list)
  list[item] = quantity
  p item + " has been added to the list."
end

def remove_item(item, list)
  list.delete(item)
  p item + " has been removed from the list."
end

def update_quantity(item, quantity, list)
  list[item] = quantity
  p "You are now buying " + quantity.to_s + " " + item + "."
end

def print_list(list)
  list.each do |item, quantity|
    p item + ": " + quantity.to_s + "."
  end
end

list = new_list
add_item("lemonade", 2, list)
add_item("tomatoes", 3, list)
add_item("onions", 1, list)
add_item("ice cream", 4, list)
remove_item("lemonade", list)
update_quantity("ice cream", 1, list)
print_list(list)

# RELEASE 3: REFACTORED SOLUTION

def new_list
  grocery_list = {}
end

def add_item(item, quantity, list)
  if list.has_key?(item)
    p "#{item} is already on your list."
  else
    list[item] = quantity 
    p "#{item} has been added to the list."
  end
end

def remove_item(item, list)
  if list.has_key?(item)  
    list.delete(item)
    p "#{item} has been removed from the list."
  else
    p "You don't have #{item} on your list."
  end
end

def update_quantity(item, quantity, list)
  if list.has_key?(item) 
    list[item] = quantity
    p "You are now buying #{quantity} #{item}."
  else 
    list[item] = quantity
    p "#{item} has been added to the list."
  end
end

def print_list(list)
  list.each do |item, quantity|
    p "You are buying #{quantity} #{item}."
  end
end

list = new_list
add_item("lemonade", 2, list)
add_item("tomatoes", 3, list)
add_item("onions", 1, list)
add_item("ice cream", 4, list)
add_item("onions", 5, list)
remove_item("cheese", list)
update_quantity("ice cream", 1, list)
print_list(list)
update_quantity("crackers", 10, list)
print_list(list)

# RELEASE 5: REFLECTION

# What did you learn about pseudocode from working on this challenge?
#   I've recently been psuedocoding the majority of my challenges, so it wasn't as
#   challenging as it was initially to create succint and clear pseudocode that was
#   easily translatable. In this challenge however, the importance of breaking up
#   the psuedocode into smaller portions was key to designing and implementing
#   our solutions. I thought that it was a smart idea that we organized our
#   psuedocode into their distinguishable methods, rather than just going into it.
#   This made the translation of it into code very painless!

# What are the tradeoffs of using Arrays and Hashes for this challenge?
#   To be entirely honest I'm not even sure what the advantage to an array would
#   even be in this case simply because we were dealing with both items and
#   quantities, thus making the hash the more intuitive choice in order to keep 
#   those two objects associated with each other. In that respect, using a hash
#   definitely has its advantages, whereas an array would have its disadvantages
#   because we probably would have had to implement subarrays in that case. I also
#   liked the fact that the key/value pairs in the has were easily accessible
#   in the code that we wrote.

# What does a method return?
#   A method would return whatever you indicated for it to return! In the cases of
#   most of our methods, our methods modified our list variable, and returned a 
#   message that let us know that the code was working (which is also good for
#   some sort of visual indication to the user).

# What kind of things can you pass into methods as arguments?
#   You can pass variables, keys, values, arrays, hashes, other methods (etc.)
#   as arguments into methods. It really appears as though you can pass almost
#   anything into a method, really.

# How can you pass information between methods?
#   As long as the methods pass the same arguments, information can easily be
#   passed between methods. This is my current understanding of this, at the very
#   least.

# What concepts were solidified in this challenge, and what concepts are still confusing?
#   How to manipulate information in hashes, and how to pass information between
#   methods were definitely solidied in this challenge. The concepts that I still
#   need to become comfortable with are setting local variables to a global variable
#   so that it can be accessed by different methods, and looking into more specific
#   ruby doc methods that I could implement in our refactored solutions.
