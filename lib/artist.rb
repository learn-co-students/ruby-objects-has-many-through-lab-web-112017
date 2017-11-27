class Artist

attr_accessor :name,
              :songs, #via an Artist method
              :genres #via songs

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @genres << song.genre
    song.genre.artists<<self
  end

end
