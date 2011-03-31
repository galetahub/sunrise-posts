require 'rails'
require 'sunrise-posts'

module Sunrise
  module Posts
    class Engine < ::Rails::Engine
      config.after_initialize do
        Sunrise::Plugin.register :posts do |plugin|
          plugin.model = 'sunrise/models/post'
          plugin.menu = false
          plugin.version = Sunrise::Posts::VERSION.dup
        end
        
        Sunrise::Plugins.activate(:posts)
      end
    end
  end
end
