# Jekyll Money2

A Jekyll plugin for dealing with money. Because we all have to at some point.

Works by extending the functionality of the popular [money](https://rubygems.org/gems/money) RubyGem. Intends to become a full-featured way to work with money in Jekyll. It starts with a simple filter to enable the common use case of formatting of international currencies. In time the plugin should be extended to create a [Tag](jekyllrb.com/docs/plugins/#tags) enabling arithmetic, comparisons and currency conversion.

## Notice on forked repo

The original repository for this gem can be found at https://git.habd.as/jhabdas/jekyll-money. The author stated that he is not actively working on the repo. This version was forked from that private Git server, moderately modified, and now lives on Github.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-money2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-money2

Then, in your `_config.yml` file, add to or make a new array with the key `plugins` and the values of the gem names of the plugins you'd like to use. In this case:

```yaml
plugins:
  - jekyll-money2
```
Note: If using a version of Jekyll below `3.5.0`, use `gems:` in place of `plugins:`.

## Usage

By default, the `money` helper formats a value as a USD currency amount using a Liquid filter.

```liquid
{{ 5000 | money }}
```
Outputs `$50.00`

```liquid
{{ 5000 | money: "GBP" }}
```
Outputs `£50.00`

```liquid
{{ 100000000 | money: "IDR" }}
```
Outputs `Rp1.000.000,00`

## Alternative Usage

The standard behaviour in the money gem treats all input values as in the base unit of currency. For example, cents for US Dollars.

```liquid
{{ 1000.00 | money }}
```
Outputs `$10.00` and **NOT** `$1000.00` as one might expect.

Use the `money_from_amount` to parse a value that includes cents/decimal.
```liquid
{{ 1000.00 | money_from_amount }}
```
Outputs `$1,000.00`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests welcome at https://github.com/johnpitchko/jekyll-money.

## Credits

This plugin wouldn't be possible without the fine work of:

- https://github.com/markets/jekyll-timeago
- https://github.com/jekyll/jekyll-seo-tag
- https://github.com/jekyll/jekyll-feed

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

Copyright (c) 2021 John Pitchko
Copyright (c) 2017 Josh Habdas
