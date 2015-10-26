# Full name greeting: ask's for a person's first name, then middle, then last, and greets them

	puts 'Hello! I am your computer! What is your first name?'
	first_name = gets.chomp
	puts 'Nice to meet you, ' + first_name + ' . What is your middle name?'
	middle_name = gets.chomp
	puts middle_name + ', huh? Pretty cool middle name you\'ve got there. And what is your last name?'
	last_name = gets.chomp
	puts 'Looks like we\'re pretty good friends already, considering I know your full name, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

# Bigger, better favorite number: ask's for a person's favorite number, and then suggests a better one (favorite number + 1)

	puts 'Hello! What is your favorite number?'
	favorite_num = gets.chomp.to_i + 1
	new_num = favorite_num.to_s
	puts 'Eh, are you sure about that? I\'m going to suggest the bigger and better number, ' + new_num + '!'

# 4.3 Variables and Methods Reflection

# 1. How do you define a local variable?
	# A local variable is a variable that is declared within a function and thus its scope is limited to that function; this means that any variable inside of a function can only be accessed through code inside of the same function.

# 2. How do you define a method?
	# A method is a procedure that occurs when an object receives it.

# 3. What is the difference between a local variable and a method?
	# A local variable essentially exists inside of a method as part of the procedure to the object.

# 4. How do you run a ruby program from the command line?
	# You can run a ruby program from the command line simply by being in the directory where the ruby file is located and typing "ruby filename.rb" in the command line.

# 5. How do you run an RSpec file from the command line?
	# The RSpec file can be run from the command line by typing "rspec rspecfile.rb" in the directory where the rspec file is located. The solution file, however, has be to linked to the rspec properly for this to work.

# 6. What was confusing about this material? What made sense?
	# I definitely thought that the majority of the material made sense as I related it to the ways in which I've interacted with interactive computer programs. It was actually really cool to have that "aha!" moment where I was able to realize exactly how video game conversations are able to appear to interact with you.
