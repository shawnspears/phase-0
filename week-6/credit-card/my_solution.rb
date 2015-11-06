# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(integer)
    @card_number = integer.to_s.split('').map(&:to_i)
    @doubles = doubles
    @sum = sum
    if @card_number.length != 16
      raise ArgumentError.new('Must be 16 characters')
    end
  end
  
  def doubles
 @doubles = @card_number.map.with_index { |n, i| n * (i.even? ? 2 : 1) }
   @join = @doubles.map {|x| x.to_s}.join
   @split = @join.to_s.split('').map(&:to_i)
  end

  def sum
  @sum = 0
    @split.each do
      |a| @sum += a
    end
    @sum
  end
  
  def check_card
    @sum % 10 == 0
  end
  
end

# Refactored Solution

class CreditCard
  def initialize(integer)
    @card_number = integer.to_s.split('').map(&:to_i)
    @doubles = doubles
     @sum = sum
    if @card_number.length != 16
      raise ArgumentError.new('Must be 16 characters')
    end
  end
  
  def doubles
 @doubles = @card_number.map.with_index { |n, i| n * (i.even? ? 2 : 1) }.join('')
    @split = @doubles.to_s.split('').map(&:to_i)
  end

  def sum
    @sum = @split.reduce(:+)
  end
  
  def check_card
    @sum % 10 == 0
  end
  
end



# Reflection