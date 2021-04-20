# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "steve-for-jekyll"
  spec.version       = "0.1.0-dev"
  spec.authors       = ["Arthur Freitas"]
  spec.email         = ["email@arthr.me"]

  spec.summary       = "A charming, fun blogging theme for Jekyll."
  spec.homepage      = "https://github.com/esporo/steve"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "webrick", "~> 1.7"
end
