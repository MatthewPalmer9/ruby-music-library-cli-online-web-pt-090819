require 'pry'

class Artist
  attr_accessor :name, :song,

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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
    new_artist.save
    new_artist
  end
  ###End of Class Methods###

  ###Beginning of Instance Methods###
  def save
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    if song.artist == nil
      song.artist = self
    else
      nil
    end
    if @songs.include?(song)
      nil
    else
      @songs << song
    end
    song
    #binding.pry
  end

  def genres
    new_array = []
    @songs.each(){|song|
      
    }
  end
  ###End of Instance Methods###
end
