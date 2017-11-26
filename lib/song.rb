class Song

  attr_accessor :name, :genre, :artist

  def initialize(song_name, song_genre)
    @name = song_name
    @genre = song_genre
    self.genre.add_song(self)
  end

end
