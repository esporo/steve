# frozen_string_literal: true

source "https://rubygems.org"
gemspec

gem 'wdm', '~> 0.1.1', :install_if => Gem.win_platform?

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
