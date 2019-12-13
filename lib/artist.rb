  require "pry"
class Artist
  attr_accessor :name


  def initialize(name)
    @name = name
    
  end

  def songs
    # binding.pry
    Song.all.select{|s| s.artist == self}
 end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def self.all
    @@all
  end

  def self.song_count
    # @@all.count
    Song.all.count
  end
end
# binding.pry
 0