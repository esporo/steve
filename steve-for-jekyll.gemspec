# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "steve-for-jekyll"
  spec.version       = "2.0"
  spec.authors       = ["Arthur Freitas"]
  spec.email         = ["email@arthr.me"]

  spec.summary       = "A charming and fun Jekyll theme for blogs."
  spec.homepage      = "https://github.com/esporo/steve"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|404\.html|staticman\.yml|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll"
  spec.add_runtime_dependency "jekyll-feed"
  spec.add_runtime_dependency "jekyll-json-feed"
  spec.add_runtime_dependency "jekyll-seo-tag"
  spec.add_runtime_dependency "jekyll-sitemap"
  spec.add_runtime_dependency "jekyll-paginate"
  spec.add_runtime_dependency "jekyll-archives"

  spec.add_development_dependency "bundler"
end
