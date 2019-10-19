module Concerns::Findable
  def find_by_name(song_name)
    class.all.find(){|song|
      if song.name == song_name
        song
      end
    }
  end

  
end
