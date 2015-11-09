# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create an array of letters that contain the bingo letters
  # Create a new random integer with a range of 1 to 100

# Check the called column for the number called.
  # Check the letter for its associated index
  # Iterate through each of the arrays of numbers
  # Check if the number called is in one of the indices indicated in the first step

# If the number is in the column, replace with an 'x'
  # Set the array index value to "x"

# Display a column to the console
  # Print each of the board arrays separately so that they fall on top of eachother

# Display the board to the console (prettily)
  # Again print each of the board arrays in an organized manner. Potentially add something around it.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_letters = ["B", "I", "N", "G", "O"]
    @number = rand(1..100)
  end

  def call
    @letter = @bingo_letters[rand(@bingo_letters.length)-1]
    @number = rand(1..100)
    @call = @letter + @number
  end

  def check
    @bingo_board.each do |row|
      if row[@bingo_letters.index(@letter)] == @number
        row[@bingo_letters.index(@letter)] = "X"
      end
    end
  end

  def display
    @bingo_board.each do |row|
      p row
    end
  end

end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_letters = ["B", "I", "N", "G", "O"]
    @number = rand(1..100)
  end

  def call
    @letter = @bingo_letters[rand(@bingo_letters.length)-1]
    @number = rand(1..100)
    @call = "#{@letter} + #{@number}"
  end

  def check
    @bingo_board.map do |row|
      if row[@bingo_letters.index(@letter)] == @number
        row[@bingo_letters.index(@letter)] = "X"
      end
    end
  end

  def display
    p "-----B-I-N-G-O-----"
    @bingo_board.each do |row|
      p row
    end
    p "-----B-O-A-R-D-----"
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#   Pseudocoding wasn't very difficult, though I found myself being rather frustrated that I 
#   couldn't just jump into the code straight away and implement my ideas. I used to have a
#   psuedocoding style that really paralleled the syntax of actual Ruby methods but I have since
#   learned that it is bad practice to state any specific methods within the psuedocode so now
#   I tend to keep it rather general.
# What are the benefits of using a class for this challenge?
#   The obvious benefit is that because a bingo game has a few different functions, this keeps
#   the game together so that you are able to access the different instance variables within the
#   array in order to use in each of the functions. I can't imagine making this any other way,
#   as it is so efficient and organized via a class.
# How can you access coordinates in a nested array?
#   In this particular challenge I was able to simply iterate through each of the subarrays
#   within the board array by initally using #.each, and then I accessed the subarray indices 
#   from there, by just using the element[index] syntax.
# What methods did you use to access and modify the array?
#   I think modify is the key word here, as when I was using the driver code on my initial solution
#   I was wondering why I was only able to get only up to 1 "X" per board no matter how many times
#   I called a letter/number. I then realized that I was not modifying the arrays within the new_game
#   so I went back into my check method and implemented the #.map method so that it would modify each
#   of the board rows. This seemed to work well, because the more times I called, the more X's I saw
#   that were displayed on the board.
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#   To be entirely honest, when I was searching for a way to modify the arrays, I couldn't find
#   anything that served my purpose better than the #.map method that I had already previously
#   used in other challenges. I felt as thought implementing something else less efficient simply
#   because I was unfamiliar with the method would be a silly move, so I stuck with it.
# How did you determine what should be an instance variable versus a local variable?
#   I made everything an instance variable so that I could access it in each of the methods which
#   seemed to work well because I essentially used each of them in more than one place.
# What do you feel is most improved in your refactored solution?
#   What was most improved is that a user can now go in and get more than 1 X on their board! Yes,
#   you can actually potentially win now if you play with my refactored solution! It was a great 
#   feeling to realize that, though I was far too lazy to keep pasting in calls until the board was
#   a winning board. I know what I'm doing tonight! Also I'm really quite proud of my display, 
#   as it says "BINGO BOARD" right on the board. How adorable.
