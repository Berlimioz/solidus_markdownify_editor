$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "solidus_markdownify_editor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "solidus_markdownify_editor"
  s.version     = SolidusMarkdownifyEditor::VERSION
  s.authors     = ["Berlimioz"]
  s.email       = ["berlimioz@gmail.com"]
  s.homepage    = "https://github.com/Berlimioz/solidus-markdownify-editor"
  s.summary     = "Adds support for WYSIWYM markdownify editor to Solidus"
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'sass-rails'
  s.add_dependency 'deface',        '~> 1.0.2'
  s.add_dependency 'solidus_backend', '~> 1.3.0'
  s.add_dependency "rails-assets-jquery.markdownify"
  s.add_dependency 'codemirror-rails'
  s.add_dependency 'redcarpet'

  s.add_development_dependency "sqlite3"
end
