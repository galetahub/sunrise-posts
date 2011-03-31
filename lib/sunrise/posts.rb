# encoding: utf-8
module Sunrise  
  module Posts
    # Default way to setup Devise. Run rails generate devise_install to create
    # a fresh initializer with all configuration values.
    def self.setup
      yield self
    end
  end
end

require 'sunrise/posts/engine'
