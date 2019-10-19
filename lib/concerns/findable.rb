module Concerns::Findable
  def find_by_name(song_name)
    class.all.find(){|song|
      if song.name == song_name
        song
      end
    }
  end

  def find_or_create_by_name(song_name)
    find_by_name(song_name) || self.create(song_name)
  end
end
