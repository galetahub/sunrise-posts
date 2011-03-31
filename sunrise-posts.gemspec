# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sunrise-posts}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Igor Galeta", "Pavlo Galeta"]
  s.date = %q{2011-03-31}
  s.description = %q{Sunrise is a Aimbulance CMS}
  s.email = %q{galeta.igor@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "README.rdoc",
    "Rakefile",
    "app/controllers/manage/posts_controller.rb",
    "app/sweepers/post_sweeper.rb",
    "app/views/manage/posts/_form.html.erb",
    "app/views/manage/posts/_model_filter.html.erb",
    "app/views/manage/posts/_post.html.erb",
    "app/views/manage/posts/edit.html.erb",
    "app/views/manage/posts/index.html.erb",
    "app/views/manage/posts/new.html.erb",
    "config/routes.rb",
    "lib/generators/sunrise/posts/USAGE",
    "lib/generators/sunrise/posts/install_generator.rb",
    "lib/generators/sunrise/posts/templates/create_posts.rb",
    "lib/generators/sunrise/posts/templates/post.rb",
    "lib/sunrise-posts.rb",
    "lib/sunrise/models/post.rb",
    "lib/sunrise/posts.rb",
    "lib/sunrise/posts/engine.rb",
    "lib/sunrise/posts/version.rb"
  ]
  s.homepage = %q{https://github.com/galetahub/sunrise-posts}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Rails CMS}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sunrise>, ["~> 0.0.1"])
    else
      s.add_dependency(%q<sunrise>, ["~> 0.0.1"])
    end
  else
    s.add_dependency(%q<sunrise>, ["~> 0.0.1"])
  end
end

