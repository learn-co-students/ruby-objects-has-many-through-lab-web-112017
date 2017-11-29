class Artist
  attr_accessor :name, :song, :genre
# initialized with a name and an empty `@songs` array.
  def initialize(name)
    @name = name
    @songs = []
  end

# an instance method, `#add_song`, that takes in an argument of a song and adds that song to the artist's collection of songs. The `#add_song` method should also tell the song that it belongs to that artist
  def add_song(song)
    @songs << song
    song.artist = self
  end

# an instance method, `#songs`, that returns the `@songs` array.
  def songs
    @songs
  end

#an instance method, `#genres` that iterates over that artist's songs and collects the genre of each song.
  def genres
    @songs.collect do |song|
      song.genre
    end
  end

end
