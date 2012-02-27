# encoding: utf-8
module Sunrise  
  module Posts
    # Default way to setup Sunrise.
    #def self.setup
      #yield self
    #end
  end
  
  module Models
    autoload :Post, 'sunrise/models/post'
  end
end

require 'sunrise/posts/version'
require 'sunrise/posts/engine'
