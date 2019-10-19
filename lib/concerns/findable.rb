module Concerns

  module Findable
    def find_by_name(name)
      self.class.all.find(){|song|
        if song.name == song_name
          name
        end
      }
    end

    def find_or_create_by_name(name)
      self.find_by_name(name) || self.create(name)
    end
  end

end
