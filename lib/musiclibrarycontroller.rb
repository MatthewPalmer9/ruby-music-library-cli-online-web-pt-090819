class MusicLibraryController
  attr_accessor :path

  def initialize(path = "./db/mp3s")
    @path = path
    new_path = MusicImporter.new(path)
    new_path.import
  end

  def call
    puts "Welcome to your music library! To list all of your songs, enter 'list songs'."
  end
end
