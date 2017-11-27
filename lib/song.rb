class Song

  attr_accessor :name, :genre, # by .new
                :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
    genre.artists << @artist
  end

end
