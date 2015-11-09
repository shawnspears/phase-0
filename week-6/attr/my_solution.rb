#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

class NameData
  attr_reader :name

  def initialize
    @name = "Shawn"
  end

end

class Greetings
  def initialize
    @user = NameData.new
  end

  def hello
  	greet = Greetings.new
  	p "Hello #{@user.name}! How wonderful to see you today."
  end

end

greet = Greetings.new
greet.hello

# Reflection

# Release 1

# What are these methods doing?
# 	Essentially these methods are being used to print and access the information (age, name, 
# 	and occupation) associated with a profile. There are also methods defined here that are
# 	being used to change these instance variables in order to change profile information.

# How are they modifying or returning the value of instance variables?
# 	They are using the change methods that were defined, and creating a new profile that is 
# 	then printed using the print_info method.

# Release 2

# What changed between the last release and this release?
# 	There is a accessor attribute age at the beginning of the class, and there is no longer a
# 	a what_is_age method being defined. This changed the method to print the age from
# 	instance_of_profile.what_is_age, to simply instance_of_profile.age.

# What was replaced?
# 	The what_is_age method was replaced with the accessor attribute age.

# Is this code simpler than the last?
# 	Much simpler! We replaced 3 lines of code (the what_is_age method) with a line indicating
# 	an attribute. Using the method then, made the code shorter in length.

# Release 3

# What changed between the last release and this release?
# 	The change_my_age method had been deleted, and can now simply be changed through the use
# 	 of instance_of_profile.age, rather than instance_of_profile.change_my_age.

# What was replaced?
# 	The change_my_age method was replaced yet again by the accessor attribute age.

# Is this code simpler than the last?
# 	Yes, it is simpler than before. Appears as though eventually we could wipe out all of
# 	the methods in favor of attributes, actually.

# Release 6

# What is a reader method?
# 	Returns a value outside of the class but doesn't change it.
# What is a writer method?
# 	Can change the value outside of the class, but not readable.
# What do the attr methods do for you?
# 	They give objects certain properties.
# Should you always use an accessor to cover your bases? Why or why not?
# 	You shouldn't always use an accessor because you don't always necessarily want the
# 	instance variables to be potentially changeable.
# What is confusing to you about these methods?
# 	Nothing really as of now! Seems like it really makes things succint. It will likely
# 	be somewhat more confusing in complicated problems, though.
