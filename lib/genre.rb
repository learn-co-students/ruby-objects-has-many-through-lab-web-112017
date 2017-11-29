class Genre
  attr_accessor :name
# A genre should be initialized with a name and an empty `@songs` array.
  def initialize(name)
    @name = name
    @songs = []
  end

# an instance method, `#add_song`, that takes in an argument of a song and adds that song to the genre's collection of songs. Now you can use the `Genre#add_song` method in the `Song` class' initialize method to tell the genre that it owns the given song.
  def add_song(song)
    @songs << song
  end

# an instance method, `#songs`, that returns the `@songs` array.
  def songs
    @songs
  end

# an instance method, `#artists`, that iterates over the genre's collection of songs and collects the artist that owns each song.
  def artists
    @songs.collect do |song|
      song.artist
    end
  end

end
