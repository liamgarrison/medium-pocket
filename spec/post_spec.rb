# You can try to do TDD and start by coding tests here (for the Post model)

require_relative "../lib/router.rb"
require_relative "../lib/controller.rb"
require_relative "../lib/view.rb"
require_relative "../lib/pocket.rb"
require_relative "../lib/post.rb"

# Set up the controller
csv_file = File.join(__dir__, '../lib/posts.csv')
pocket = Pocket.new(csv_file)
controller = Controller.new(pocket)

describe Controller do
  # As a user, I can list all posts I saved
  describe "#list" do
    # Expect controller.list to display a list of posts
      # 1. [x] - What’s your goal for learning to code? (Boris Paillard)
      # 2. [ ] - Teaching Programming is Hard (Boris Paillard)
  end
  # As a user, I can add a post I want to read later
  describe "#add" do
    # Expect controller.add to ask for path and then display list of posts
      # Path?
      # > le-wagon/this-is-what-a-developer-looks-like-379c261db24d

      # 1. [x] - What’s your goal for learning to code? (Boris Paillard)
      # 2. [ ] - Teaching Programming is Hard (Boris Paillard)
      # 3. [ ] - This is what a developer looks like (Rebecca Menat)
  end
  # As a user, I can read a post I saved
  describe "#read" do
    # Expect controller.read to:
      # 1. display the list of posts
      # 2. prompt for post number
      # 3. display the post
  end
  # As a user, I can mark a post as read
  describe "#mark" do
    # Expect controller.mark to:
      # 1. display the list of posts
      # 2. prompt for post number to mark as read
      # 3. display the list of posts
  end
end
