require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist != nil
    self.genre = genre if genre != nil
    save
  end

  ###Beginning of Class Maethods###
  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(song)
    new_song = Song.new(song)
    new_song
  end

  def self.find_by_name(song_name)
    self.all.each(){|song|
      if song.name == song_name
        song_name
      end 
    }
    binding.pry
  end
###End of Class Methods###

###Beginning of Instance Methods###
  def save
    @@all << self
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self if !genre.songs.include?(self)
  end
  ###End of Instance Methods###
end
