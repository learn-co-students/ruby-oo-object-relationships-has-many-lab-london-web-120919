class Post
    attr_accessor :name
    attr_writer :author

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def author
        @author
    end
    def title
        @name
    end
    def author_name
        unless self.author
            nil
        else
            @author.name
        end
    end
end