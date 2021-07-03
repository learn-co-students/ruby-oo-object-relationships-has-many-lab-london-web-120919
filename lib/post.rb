 class Post

  attr_accessor :title, :author

  @@all = []

  def initialize (title)
    @title = title
    @@all << self
    self.author = author
  end

  def self.all
    @@all
  end

  def author_name
    unless self.author
      nil
    else
      self.author.name
    end
    # self.author
  end


 end