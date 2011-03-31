class Post < ActiveRecord::Base
  include Sunrise::Models::Post
  
  attr_accessible :published_at, :content, :title
  
#  scope :visible, where(:is_visible => true)
end
