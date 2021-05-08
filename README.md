# Steve for Jekyll

Steve is a charming and fun blog theme for [Jekyll](https://jekyllrb.com/), the static site generator. It's developed by [@arthrfrts](https://github.com/arthrfrts) to be used on the [Esporo](https://esporo.net/) website.

See it in action on the [demo site](https://esporo.github.io/steve).

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "steve-for-jekyll"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: steve-for-jekyll
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install steve

## Usage

### 1. Install dependencies

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hello. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `steve.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

