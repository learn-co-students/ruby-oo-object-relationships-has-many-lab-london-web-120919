require 'pry'
class Artist
    attr_accessor :name 
    attr_writer :song


    def initialize(name)
        @name = name
    end
    def songs
        Song.all.filter {|song| song.artist == self}
    end
    # def artist=(name)
    #     @name = name 
    # end
    def add_song(song)
        song.artist = self
    end
    def add_song_by_name(song)
        song = Song.new(song)
        # song.artist = self
        add_song(song)
    end
    def self.song_count
       Song.all.length     
    end

end