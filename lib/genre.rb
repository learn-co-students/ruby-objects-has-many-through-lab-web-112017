class Genre
  attr_reader :name, :songs
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def add_song(song)
    @songs << song
  end

  def artists
    @songs.collect { |s| s.artist }
  end
end
