class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
end

# title, body, published?
# @posts = Post.where(:published => true)
