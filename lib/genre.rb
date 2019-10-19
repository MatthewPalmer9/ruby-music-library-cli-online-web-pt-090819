require 'pry'

class Genre
  attr_accessor :name
  extend Concerns::Findable

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(genre)
    new_genre = Genre.new(genre)
    new_genre
  end

  def artists
    @new_array = []

    @songs.each(){|song|
      if @new_array.include?(song.artist)
        nil
      else
        @new_array << song.artist
      end
    }
    @new_array
  end
end
