class MusicLibraryController
  attr_accessor :path

  def initialize(path = "./db/mp3s")
    @path = path
    new_path = MusicImporter.new(path)
    new_path.import
  end
end
