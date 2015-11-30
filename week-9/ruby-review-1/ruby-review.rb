# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: Jessie Richardson].
# I spent [2] hours on this challenge.


# Pseudocode

# 1. Initialize a class Song that takes parameters song and artist
# 2. Create method that "plays" the song, or prints it
# 3. Create a playlist class that can be initialized with multiple songs
# 4. Create an add song method that can take multiple songs as an input
# and add it to a new array tracks
# 5. Create a method that returns the length of tracks
# 6. Create a method that deletes a song off of the tracks array
# 7. Create a method that checks if the track includes a specific song
# 8. Create a method that plays all of the songs, or prints them
# 9. Create a method that displays all of the songs, or prints them


# Initial Solution

class Song
  def initialize(song, artist)
    @@song = song
    @@artist = artist
  end
  
  def play
    puts @@song
  end

end

class Playlist < Song
  def initialize(*song)
    @@song
    @@artist

  end
  
  def add(*song)
    @tracks = []
    @tracks << @@song
  end
  
  def num_of_tracks
    return @tracks.length
  end
  
  def remove(song)
    @tracks.delete(@@song)
  end
  
  def includes?(song)
    @tracks.include?(@@song)
  end
  
  def play_all
    puts @tracks
  end
  
  def display
    puts @tracks
  end
  
end

# Refactored Solution

class Song
  def initialize(song, artist)
    @@song = song
    @@artist = artist
  end
  
  def play
    puts @@song
  end

end

class Playlist < Song
  def initialize(*song)
    @@song
    @@artist

  end
  
  def add(*song)
    @tracks = []
    @tracks << @@song
  end
  
  def num_of_tracks
    return @tracks.length
  end
  
  def remove(song)
    @tracks.delete(@@song)
  end
  
  def includes?(song)
    @tracks.include?(@@song)
  end
  
  def play_all
    puts @tracks
  end
  
  def display
    puts @tracks
  end
  
end




# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display


# Reflection

# What concepts did you review in this challenge?
#   We definitely felt as though we needed a refresher on classes, though we ended up
#   learning a few new concepts in this challenge such as the splat operator that allows
#   a method to have multiple inputs at once, and the idea of parent/child classes.
# What is still confusing to you about Ruby?
#   I feel as though what could have been utilized here were attributes, and I still am
#   not quite sure when those are most applicable to be entirely honest.
# What are you going to study to get more prepared for Phase 1?
#   Phase 1 is literally starting today, so not sure I can prepare much at this point! 
#   I feel fairly confident in my abilities sans attrs, so I may skim those over fairly
#   quickly at some point today.
