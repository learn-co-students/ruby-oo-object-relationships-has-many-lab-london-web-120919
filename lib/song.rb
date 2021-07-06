class Song
    attr_reader :artist, :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist= (artist)
        @artist = artist
    end

    def artist_name
        @artist? @artist.name : nil
    end


end