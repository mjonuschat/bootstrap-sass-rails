$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap/sass/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap-sass-rails"
  s.version     = "#{Bootstrap::Sass::Rails::VERSION}.#{Bootstrap::Sass::Rails::PATCHLEVEL}"
  s.authors     = ["Morton Jonuschat"]
  s.email       = ["yabawock@gmail.com"]
  s.homepage    = "https://github.com/yabawock/bootstrap-sass-rails"
  s.summary     = "HTML, CSS, and JS toolkit from Twitter converted to Sasss and the Rails asset pipeline"
  s.description = "Bootstrap is Twitter's toolkit for kickstarting CSS for websites, apps, and more. It includes base CSS styles for typography, forms, buttons, tables, grids, navigation, alerts, and more."

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.files.reject! { |fn| fn.include? ".sass-cache" }

  s.test_files = Dir["test/**/*"]
  s.test_files.reject! { |fn| fn.include? "dummy/tmp/cache/" }
  s.test_files.reject! { |fn| fn.include? "dummy/log/" }
  s.test_files.reject! { |fn| fn.include? ".sass-cache" }

  s.add_dependency "railties", ">= 3.2.0"
  s.add_dependency "sass-rails", ">= 3.2.0"
  s.add_dependency "bootstrap-sass", "~> #{Bootstrap::Sass::Rails::VERSION}.0"

  s.add_development_dependency "rake"
  s.add_development_dependency "rails",         ">= 3.2.0"
  s.add_development_dependency "appraisal",     "~> 0.5.1"
end
