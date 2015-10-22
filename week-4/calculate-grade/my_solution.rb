# Calculate a Grade

# I worked on this challenge [with: Joshua Monzon].


# Your Solution Below

def get_grade(grade)
	case grade
	when 90..100; grade = 'A'
	when 80..89; grade = 'B'
	when 70..79; grade = 'C'
	when 60..69; grade = 'D'
	when 0..59; grade = 'F'
	end
end