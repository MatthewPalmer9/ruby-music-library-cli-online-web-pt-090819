require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  ###Beginning of class methods###
  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(artist)
    new_artist = Artist.new(artist)
    new_artist
  end
  ###End of Class Methods###

  ###Beginning of Instance Methods###
  def save
    @@all << self
  end

  def add_song(new_song)
    song = Song.new(new_song)
    #new_song.artist = self
    song.artist = self.name
    #binding.pry
  end
  ###End of Instance Methods###
end
