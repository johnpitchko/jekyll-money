# frozen_string_literal: true

require 'minitest/autorun'
require 'jekyll-money/core'

class TestMoney < Minitest::Test
  def setup
  end

  def test_money_from_string
    assert_equal('$10.00', JekyllMoney::Core.money_from_string(10.00).format)
    assert_equal('£1.00', JekyllMoney::Core.money_from_string(1.00, 'GBP').format)
    assert_equal('€1,00', JekyllMoney::Core.money_from_string(1.00, 'EUR').format)
  end
end
