$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "yitheme/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "yitheme"
  s.version     = Yitheme::VERSION
  s.authors     = ["hunter"]
  s.email       = ["hunter.wxhu@gmail.com"]
  s.homepage    = "http://github.com"
  s.summary     = "a gem to seperate css and js from app"
  s.description = "a gem to seperate css and js from app"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"
  # s.add_dependency "jquery-rails"

 # s.add_development_dependency "sqlite3"
end
