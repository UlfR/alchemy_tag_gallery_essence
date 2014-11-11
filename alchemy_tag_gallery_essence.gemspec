$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alchemy_tag_gallery_essence/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "alchemy-tag_gallery_essence"
  s.version     = Alchemy::TagGallery::Essence::VERSION
  s.authors     = ["Dmitry Veniyaminovich Tsvetkov"]
  s.email       = ["vlaew5@gmail.com"]
  s.homepage    = "http://belka-studio.ru/"
  s.summary     = %q{Adds EssenceTagGallery essence to your Alchemy CMS powered site.}
  s.description = %q{EssenceTagGallery for Alchemy CMS 3.0}
  s.license     = 'BSD New'

  s.files = `git ls-files`.split($/)

  s.add_runtime_dependency 'alchemy_cms', ['>= 3.0.0']
  s.metadata['allowed_push_host'] = 'https://github.com/vlaew/alchemy-tag_gallery_essence.git'
end
