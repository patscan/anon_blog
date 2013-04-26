class Tag < ActiveRecord::Base
  has_and_belongs_to_many :posts

  validates :name, :presence => true
end
# Post.find(1).tags    <- find the tags associated with Post with id 1
# Tag.find(1).posts    <- find the posts associated with Tag with id 1

