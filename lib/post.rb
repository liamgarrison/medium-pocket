class Post
  attr_reader :path, :is_read, :title, :author, :content
  def initialize(post_data)
    @path = post_data[:path]
    @title = post_data[:title]
    @content = post_data[:content]
    @author = post_data[:author]
    @is_read = post_data[:is_read]
    # Following need be scraped from web
  end

  def mark_read
    @is_read = true
  end
end
