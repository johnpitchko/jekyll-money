require "jekyll-money2/version"
require 'jekyll-money2/core'
require "jekyll-money2/filter"

Liquid::Template.register_filter(JekyllMoney2::Filter)
