class Post < ActiveRecord::Base
  include Sunrise::Models::Post
  
  attr_accessible :published_at, :content, :title
  
  scope :recently, order("#{quoted_table_name}.published_at DESC")
end
