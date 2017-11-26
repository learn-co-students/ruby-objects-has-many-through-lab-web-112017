class Artist

  attr_accessor :name, :songs

  def initialize(artist_name)
    @name = artist_name
    @songs = []
    @genres = []
  end

  def add_song(song_object)
    self.songs << song_object
    song_object.artist = self
  end

  def genres
    self.songs.collect do |song_object|
      song_object.genre
    end
  end

end
