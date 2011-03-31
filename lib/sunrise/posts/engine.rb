require 'rails'
require 'sunrise-posts'

module Sunrise
  module Posts
    class Engine < ::Rails::Engine
      config.after_initialize do
        Sunrise.add_module :posts, :model => 'sunrise/models/post'
      end
    end
  end
end
