class Song
    attr_accessor :name
    attr_writer :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def artist
        @artist 
    end
    def artist_name
        unless self.artist
            nil
        else
            @artist.name
        end
    end
end