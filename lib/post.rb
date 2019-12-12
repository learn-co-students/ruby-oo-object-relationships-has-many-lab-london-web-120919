class Post
    attr_accessor :author, :title
    @@all = []

    def initialize(title)
        @title = title
        new
    end
    
    def self.all
        @@all
    end
    
    def new
        @@all.push(self)
    end

    def author_name
        self.author ? self.author.name : nil
    end

end