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
	# A local variable is 
# 2. How do you define a method?
	# A method is
# 3. What is the difference between a local variable and a method?

# 4. How do you run a ruby program from the command line?

# 5. How do you run an RSpec file from the command line?

# 6. What was confusing about this material? What made sense?
