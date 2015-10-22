# Leap Years

# I worked on this challenge [with: Joshua Monzon].

def leap_year?(year)
	if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
		true
	else
		false
	end
end

# Your Solution Below