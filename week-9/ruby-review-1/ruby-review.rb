# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: Jessie Richardson].
# I spent [2] hours on this challenge.


# Pseudocode



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
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?
