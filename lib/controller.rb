require_relative "view"
require "open-uri"
require "nokogiri"

class Controller
  def initialize(pocket)
    @pocket = pocket
    @view = View.new
  end

  def list
    @view.list_posts(@pocket.all) # pass the posts array to the view
  end

  def add
    path = @view.path # Get path from user
    # Set up the empty post data
    post_data = { path: path, title: nil, content: nil,
                  author: nil, is_read: false }
    # call the scraper here to get title, content and author
    post_data = post_scraper(post_data)
    # Create new post
    post = Post.new(post_data)
    # Add the post
    @pocket.add_post(post) # Call the add post method
    @view.list_posts(@pocket.all) # Display the posts
  end

  def read
    @view.list_posts(@pocket.all) # show the posts
    post_index = @view.index # Ask for index of post to read
    post = @pocket.find_by_index(post_index)
    @view.display_single_post(post) # Display the post
  end

  def mark
    @view.list_posts(@pocket.all) # show the posts
    post_index = @view.index # Ask for index to mark as read
    @pocket.mark_read(post_index) # Mark as read
    print `clear`
    @view.list_posts(@pocket.all) # Display the posts again with updated is_read
  end
end

def post_scraper(post_data)
  full_path = "https://medium.com/#{post_data[:path]}"
  # Grab HTML
  html_content = open(full_path).read
  doc = Nokogiri::HTML(html_content)
  # Get the title
  post_data[:title] = doc.at_css('.graf--title').text.strip
  # Get the content
  post_data[:content] = ""
  doc.search('.graf').each { |el| post_data[:content] += el.text.strip + "\n\n" }
  # Get the author
  post_data[:author] = doc.at_css('main > article > div > section >
    div.section-content > div > div > div.u-flex1.u-paddingLeft15.u-overflowHidden >
    div.u-paddingBottom3 > a').text.strip
  # Return the post data hash
  return post_data
end
