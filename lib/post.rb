class Post

    @@all = []

    attr_accessor :name, :title, :author

    def initialize(title)
        @title = title
        @@all << self
     
    end

    def self.all
        @@all
    end


    def author=(author)
        @author = author
    end

    def author_name
        unless self.author
            nil
        else
            self.author.name
        end
    end
end
