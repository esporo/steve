# frozen_string_literal: true

source "https://rubygems.org"
gemspec

install_if -> { Gem.win_platform? } do
  gem "wdm", "~> 0.1.1"
  gem "tzinfo", "~> 2.0.4"
  gem "tzinfo-data"
end
