class Genre

  attr_reader :name
  attr_accessor :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end

end
