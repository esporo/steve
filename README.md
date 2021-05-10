# Steve for Jekyll

Steve is a charming and fun blog theme for [Jekyll](https://jekyllrb.com/), the static site generator. It's developed by [@arthrfrts](https://github.com/arthrfrts) to be used on the [Esporo](https://esporo.net/) websites &mdash; but feel free to use it in any project you may find it fitting.

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

Steve is made to be used with zero-configuration needed. Even so, you can customize it further with theme settings, style variables, content includes and plugin-specific configurations. We will guide you through each one of those.

### Theme settings

Steve's settings are defined in your site's `_config.yml`:

```yaml
steve:
  intensedebate_account: # get one at <https://intensedebate.com/install>
  archives: # Prefixes used with archive titles
    date: Posts from
    tag: More about…
    category: Posts filed in
  date_formats: # Uses <http://strftime.net>
    post: "%b %e, %Y" # The date format used in the post layout.
    archives: # The date formats for the archive layout.
      day: "%b %e, %Y"
      month: "%b, %Y"
      year: "%Y"
  page_404: |+
    The page you're looking for could not be found.

    Maybe the search can help.
  pagination: # Strings used in the blog- and post-pagination.
    next_page: "&laquo; Next"
    prev_page: "Previous &raquo;"
    prev_post: "Previous:"
    next_post: "Next:"
  post: # Strings used in the post layout.
    byline: "By"
    tags: More about…
  search: # Strings used in the search form.
    label: Search this blog
    placeholder: What you're looking for?
    submit: Go!
```

The above are the default values that Steve will use. Feel free to change the ones you want. This is useful if you want to localize the theme strings or change the date formats used by the theme.

### Style variables

You can change Steve's appearance with a different color scheme or typography setting custom variables. Follow these instructions:

1. Create a `screen.scss` file in `assets/css`.
2. Add the following content:

   ```scss
   ---
   ---

   @import "{{ site.theme }}";
   ```

3. Before the `@import` declaration, you can set the following custom SCSS variables:

```scss
/*
  Color Scheme
*/

$color__background-content: #fff; // posts, pages and sidebar background color.
$color__background-body: #e4f0f6; // body background color:
$color__text: #000112; // body text color

$color__link: #4e9dd8; // color for links and accents
$color__link-hover: #2361a7; // alternate color for active or focused links and accents

$color__details: #939496; // color for details such as borders and shadows
$color__details-lighter: #f0f1f4; // lighter alternative for details
$color__details-darker: #6d6e70; // darker alternative for details

/*
  Typography
*/

$font__body: sans-serif; // used for the main, body typography
$font__headings: sans-serif; // used for headings and feature elements
$font__code: monospace; // used for pre-formatted text and code.

/*
  Layout
*/
$layout__container-width: 1180px; // the width of the main content (content + sidebar)
$layout__gutter: 2rem; // the spacing unit between elements.
```

You can change the values to any variable you want. Steve will replace the default values set by the theme with the ones you choose. Be sure that the variable definitions are **above** your `@import "{{ site.theme }}"` declaration.

### Content includes

Steve supports two editable areas and three different menus.

#### Editable areas

You can add any content you want in your site's sidebar or footer.

- Create a `custom-widgets.html` file in `_includes/blog/` to add custom content to your site's sidebar.
- Create a `custom-text.html` file in `_includes/footer` to add custom content to your site's footer.

#### Menus

Steve has three menu positions controlled using [Jekyll data files](https://jekyllrb.com/docs/datafiles/):

- `_data/menu.yml` &mdash; The main menu, above the website content.
- `_data/social.yml` &mdash; The social menu, in the website sidebar.
- `_data/links.yml` &mdash; And a third menu at the bottom of your website's footer.

Create the respective data file for the menu you want to use. Menus are a YAML List with the following structure:

```yaml
- title: "About this site" # The item title
  url: "/about/" # The item URL or path
  external: true # Optional, if the link points to an external resource.
  color: "#336699" # Only on `_data/menu.yml`, the background color of this menu item.
  icon: "<svg ...>" # Only on `_data/social.yml`, the SVG icon markup for this item -- get one in <https://simpleicons.org>
```

#### Blogrolls

Blogrolls are linked lists shown in your site's sidebar.Like menus, you can set up as any blogrolls as you want using the `_data/blogroll.yml` data file.

```yaml
- title: Blogroll # The blogroll title shown in the sidebar
  links: # The list of links in this blogroll
    - title: Link 1
      url: "https://example.com"
    - title: Link 2
      url: "https://example.net"
    - title: Link 3
      url: "https://example.org"
- title: Blogroll 2
  links:
    - title: Link 1
      url: "https://example.com"
    - title: Link 2
      url: "https://example.net"
    - title: Link 3
      url: "https://example.org"
```

### Plugin-specific settings

Steve uses the following Jekyll plugins to create sitemaps, RSS feeds, archives and much more.

- [jekyll-feed](https://github.com/jekyll/jekyll-feed) &mdash; generates the RSS feed.
- [jekyll-seo-map](https://github.com/jekyll/jekyll-seo-tag) &mdash; generates site's OpenGraph and SEO meta tags.
- [jekyll-sitemap](https://github.com/jekyll/jekyll-sitemap) &mdash; generates the XML sitemap.
- [jekyll-paginate](https://github.com/jekyll/jekyll-paginate) &mdash; paginates the home post list.
- [jekyll-archives](https://github.com/jekyll/jekyll-archives) &mdash; generates the archives by date, tag and category.

While Steve sets initial configurations for these plugins, you may want to change them in your `_config.yml`. Please refer to these plugins documentations for further reading about how to change their config options.

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/esporo/steve>. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `steve-for-jekyll.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
