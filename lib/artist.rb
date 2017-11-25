class Artist

  attr_reader :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)

    @songs.push(song)
    song.artist = self

    @genres.push(song.genre)
    song.genre.artists.push(self)

  end

end
