class Artist
attr_accessor :songs
attr_reader :name
attr_writer

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
