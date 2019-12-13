require 'pry'

class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    def artist_name
        unless self.artist 
            nil
        else
            self.artist.name
        end
    end

end

# ww = Song.new(name: "Wonderwall")

# ww.artist = "Oasis"

# # oasis = Artist.new("Oasis")

# ww.artist = Artist.new("Oasis")

