require 'pry'

class Artist

attr_accessor :name

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  @songs << song
  song.artist = self
end

def songs
  @songs
end

def genres
  @songs.collect do |song|
   #i need to get the genre of each song
     song.genre
  end
end
end

binding.pry
