class Song

  attr_accessor :name, :artist, :genre

# A song should be initialized with a name and a genre. The initialize method should associate that song to the genre passed in as an argument...A song needs a "genre" attribute. Try creating an `attr_accessor` for `genre`. Genres also need to know about songs. You'll need to create a `Genre#add_song` method.
  def initialize(cat, dog)
    @name = cat
    @genre = dog
    genre.add_song(self)
  end



end
