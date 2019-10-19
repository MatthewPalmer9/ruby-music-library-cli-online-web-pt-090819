require 'pry'

class Genre
  attr_accessor :name

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

    @songs.each(){|artist|
      binding.pry
      # if @new_array.include?(genre.artist)
      #   nil
      # else
      #   @new_array << genre.artist
      # end
    }
    @new_array
  end
end
