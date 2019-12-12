class Song
    attr_accessor :artist, :name
    @@all = []

    def initialize(name)
        @name = name
        new
    end
    
    def self.all
        @@all
    end
    
    def new
        @@all.push(self)
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end

end