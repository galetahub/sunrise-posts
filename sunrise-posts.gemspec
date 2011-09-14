# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sunrise/posts/version"

Gem::Specification.new do |s|
  s.name = "sunrise-posts"
  s.version = Sunrise::Posts::VERSION.dup
  s.platform = Gem::Platform::RUBY 
  s.summary = "Posts plugin for sunrise-cms"
  s.description = "Posts plugin for Sunrise CMS via aimbulance"
  s.authors = ["Igor Galeta", "Pavel Galeta"]
  s.email = "galeta.igor@gmail.com"
  s.rubyforge_project = "sunrise-posts"
  s.homepage = "https://github.com/galetahub/sunrise-posts"
  
  s.files = Dir["{app,lib,config,db}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.test_files = Dir["{spec}/**/*"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.require_paths = ["lib"]
  
  s.add_dependency("sunrise-cms", ">= 0.2.0")
end

