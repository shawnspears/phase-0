# Reverse Words

# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# Pseudocode
# 1. Separate the words in the string
# 2. Reverse each word separately so that they're still in the same order
# 3. Print the string
# 4. END

# Initial Solution

def reverse_words(string)
  split = string.split(" ")
  split.map! do |word|
    word.reverse()
  end
  p split.join(" ")
end

# Refactored Solution

def reverse_words(string)
  split = string.split(" ")
  split.map! do |word|
    word.reverse()
  end
  p split.join(" ")
end

# Reflection
# What concepts did you review or learn in this challenge?

# Fibonacci Sequence

# I worked on this challenge [by myself.
# This challenge took me [1] hours.

# Pseudocode

# 1. Create an array with first two values
# 2. Iterate over the array, and add a value to the end of the array that equals the sum of
# the first two values, starting with the first value
# 3. Move to the next value in the array and repeat step two
# 4. Check if the array contains the input number
# 5. Print true if contains number, and false if it doesn't
# 6. END


# Initial Solution

def is_fibonacci?(num)
  fibonacci = [0, 1]
  i = 0
  fibonacci.each do |i|
    while fibonacci.last < num
      fibonacci.push(fibonacci[i] + fibonacci[i + 1])
      i += 1
    end
  end
  p fibonacci.include?(num)
end

# Refactored Solution

def is_fibonacci?(num)
  fibonacci = [0, 1]
  i = 0
  fibonacci.each do |i|
    while fibonacci.last < num
      fibonacci.push(fibonacci[i] + fibonacci[i + 1])
      i += 1
    end
  end
  p fibonacci.include?(num)
end

# Reflection
# What concepts did you review or learn in this challenge?

# FizzBuzz Super Edition

# I worked on this challenge [by myself].
# This challenge took me [0.5] hours.

# Pseudocode

# 1. Iterate through the input array
# 2. If the value in the array is evenly divisable by 15 assign the value to "FizzBuzz"
# 3. If the value in the array is evenly divisable by 5 assign the value to "Buzz"
# 4. If the value in the array is evenly divisable by 3 assign the value to "Fizz"
# 5. Make sure the array values are being modified
# 6. When done iterating, print the array
# 7. END

# Initial Solution

def super_fizzbuzz(array)
  array.map! do |num|
    if num % 15 == 0
      num = "FizzBuzz"
    elsif num % 5 == 0
      num = "Buzz"
    elsif num % 3 == 0
      num = "Fizz"
    else
      num = num
    end
  end 
  p array
end

# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |num|
    if num % 15 == 0
      num = "FizzBuzz"
    elsif num % 5 == 0
      num = "Buzz"
    elsif num % 3 == 0
      num = "Fizz"
    else
      num = num
    end
  end 
  p array
end

# Reflection
# What concepts did you review or learn in this challenge?

# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # What is #each doing here?
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning?
end

# Your Refactored Solution

p cipher = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

i = 0
cipher[i] = cipher[i-4]
p cipher[0]



# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# What concepts did you review or learn in this challenge?
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?