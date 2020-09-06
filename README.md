# technophile-jekyll-theme

technophile-jekyll-theme is a Jekyll theme for Technophiles, Developers and Hackers to host their portfolio and blog

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "technophile-jekyll-theme"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: technophile-jekyll-theme
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install technophile-jekyll-theme

## Usage

Include `gem "technophile-jekyll-theme"` in Gemfile under `jekyll_plugins` group
```
group :jekyll_plugins do
  gem 'technophile-jekyll-theme', '~> 0.1.0'
  # other plugins
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AquisTech/technophile-jekyll-theme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `technophile-jekyll-theme.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Built and maintained by [Anand Bait](https://aquistech.github.io/ 'AquisTech')