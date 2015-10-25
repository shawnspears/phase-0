# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Karla King].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: integer
# Steps to solve the problem.

	#Accept an array of numbers and output sum of the array
	#Access each index and add it to variable sum 
	#Print sum 

# 1. total initial solution


def total(array)
  sum = 0
  array.each {|i| sum += i}
  p sum
end 

total([1,2,3])

# 3. total refactored solution

def total(array)
  p array.reduce(:+)
end 


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array
# Output: string
# Steps to solve the problem.
	#Accept an array of strings and output a sentence 
	#Access each index and add it to variable sentence 
	#Print sentence

# 5. sentence_maker initial solution

def sentence_maker(array)
  p array.reduce(:+)
end 

sentence_maker(['Hi!',' ','from',' ','Shawn',' ','and',' ','Karla'])

# 6. sentence_maker refactored solution

def sentence_maker(array)
  p array.join(" ").capitalize + "."
end

sentence_maker(["hello", "world"])

