class Artist
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @genres << song
  end

  def songs
    @songs
  end

  def genres
    @songs.collect { |s| s.genre }
  end
end
