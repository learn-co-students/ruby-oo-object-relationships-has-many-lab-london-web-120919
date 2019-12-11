require "pry"

class Post

    attr_reader :title, :author

    @@all = []

    def initialize (title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author= (author)
        @author = author 
    end

    def author_name
        @author? @author.name : nil
    end

end