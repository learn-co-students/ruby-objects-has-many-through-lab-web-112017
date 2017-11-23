class Artist

  attr_reader :name
  attr_accessor :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def genres
    self.songs.map do |song|
      song.genre
    end
  end

end
