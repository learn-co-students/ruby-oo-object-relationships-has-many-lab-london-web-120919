require 'pry'
class Song 
    attr_accessor :name, :artist
    @@all = []

    def initialize(name = nil)
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
 
