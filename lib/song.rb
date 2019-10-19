require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist != nil
    self.genre = genre if genre != nil
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
    new_song.save
    new_song
  end

  def self.find_by_name(song_name)
    self.all.find(){|song|
      if song.name == song_name
        song
      end
    }
  end

  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create(song_name)
  end

  def self.new_from_filename(filename)
    array = filename.split(" - ")

    artist_name = array[0]
    song_name = array[1]
    genre_name = array[2].split(".mp3").join

    artist = Artist.find_or_create_by_name(artist_name)
    genre = Genre.find_or_create_by_name(genre_name)
    self.new(song_name, artist, genre)
  end

  def self.create_from_filename(filename)
    self.new_from_filename(filename)
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
