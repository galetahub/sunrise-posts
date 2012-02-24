class Post < ActiveRecord::Base
  include Sunrise::Models::Post
  
  #has_many :comments, :as => :commentable, :dependent => :delete_all
  
  attr_accessible :published_at, :content, :title
  
  scope :recently, order("#{quoted_table_name}.published_at DESC")
end
