class Genre

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song (song)
    @songs << song
    song.genre = self
  end

  def artists
    self.songs.map do |song_index|
      song_index.artist
    end
  end

end
