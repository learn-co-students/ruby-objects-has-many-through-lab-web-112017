class Genre
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def artists
    artists = []
    self.songs.each do |song|
      artists << song.artist
    end
    artists
  end
end
