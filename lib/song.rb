class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist != nil
    save
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(song)
    new_song = Song.new(song)
    new_song
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
  end
end
