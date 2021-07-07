class Author
    attr_accessor :name
    attr_writer :post

    def initialize(name)
        @name = name
    end
    def posts
        #it will get .all from Post, but will only show me the ones that matches me
        Post.all.filter {|post| post.author == self}
    end
    def add_post(post)
        post.author = self
    end
    def add_post_by_title(post)
        post = Post.new(post)
        # song.artist = self
        add_post(post)
    end
    def self.post_count #check why self was necessary
        Post.all.count 
    end
end