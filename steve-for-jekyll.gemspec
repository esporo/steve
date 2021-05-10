# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "steve-for-jekyll"
  spec.version       = "1.0.2"
  spec.authors       = ["Arthur Freitas"]
  spec.email         = ["email@arthr.me"]

  spec.summary       = "A charming and fun Jekyll theme for blogs."
  spec.homepage      = "https://github.com/esporo/steve"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|404\.html|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "webrick", "~> 1.7"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.2"

  spec.add_development_dependency "bundler", "~> 2.2"
end
