require 'pry'

class Song

  attr_accessor :artist, :genre, :title

  def initialize(title, genre)
    @title = title
    @genre = genre
    self.genre.songs.push(self)
  end

end
