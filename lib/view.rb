class View
  def list_posts(posts_array)
    puts "------------------------------------------------------------"
    puts "ALL POSTS"
    puts "------------------------------------------------------------"
    posts_array.each_with_index do |post, index|
      read_box = post.is_read ? "[X]" : "[ ]"
      if post.title.length < 40 then modified_title = post.title + " " * (41 - post.title.length)
      else modified_title = post.title[0..37] + "..."
      end
      puts "#{1 + index}. #{read_box} - #{modified_title} (#{post.author})"
      # p post
    end
  end

  def path
    puts "------------------------------------------------------------"
    puts "Path?"
    print "> "
    return gets.chomp
  end

  def index
    puts "------------------------------------------------------------"
    puts "Index?"
    print "> "
    return gets.chomp.to_i - 1
  end

  def display_single_post(post)
    puts "\n------------------------------------------------------------"
    puts "Title: #{post.title}"
    puts "Author: #{post.author}"
    puts "------------------------------------------------------------\n\n"
    puts "#{post.content}\n\n"
  end
end
