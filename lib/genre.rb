class Genre

  attr_accessor :name, :songs

  def initialize(genre_name)
    @name = genre_name
    @songs = []
  end

  def add_song(song_object)
    self.songs << song_object
  end

  def artists
    self.songs.collect do |song_object|
      song_object.artist
    end
  end

end
