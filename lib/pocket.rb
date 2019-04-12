require "csv"
require_relative "post"

class Pocket
  def initialize(path_to_csv)
    # Empty posts array
    @posts = []
    # Set the path to the csv
    @path_to_csv = path_to_csv
    # Load data from csv into @posts
    csv_load
  end

  def all
    return @posts
  end

  def add_post(post)
    # Push instance to posts array
    @posts << post
    # Save
    csv_save
  end

  def remove_post(post_index)
    @posts.delete_at(post_index)
    csv_save
  end

  def mark_read(index)
    @posts[index].mark_read
    csv_save
  end

  def find_by_index(post_index)
    return @posts[post_index]
  end

  private

  def csv_load
    CSV.foreach(@path_to_csv) do |row|
      # Parse the row into a hash
      post_data = {
        path: row[0],
        title: row[1],
        content: row[2],
        author: row[3],
        is_read: row[4] == "true"
      }
      @posts << Post.new(post_data)
    end
  end

  def csv_save
    CSV.open(@path_to_csv, "wb") do |csv|
      @posts.each do |post_data|
        # Convert post_data to array for csv
        csv << [post_data.path,
                post_data.title,
                post_data.content,
                post_data.author,
                post_data.is_read]
      end
    end
  end
end
