# frozen_string_literal: true

require 'minitest/autorun'
require 'jekyll-money/core'

class TestMoneyFromAmount < Minitest::Test
  def test_processes_formatted_currency_input
    assert_equal('$1,000.00', JekyllMoney::Core.money_from_amount(1000))
    assert_equal('$1,000.00', JekyllMoney::Core.money_from_amount(1000.00))
    assert_equal('$1,000.00', JekyllMoney::Core.money_from_amount(1000.00))
  end

  def test_returns_string
    assert_instance_of(String, JekyllMoney::Core.money_from_amount(10.00))
  end

  def test_accepts_multiple_currency_formats
    assert_equal('$10.00', JekyllMoney::Core.money_from_amount(10.00))
    assert_equal('£1.00', JekyllMoney::Core.money_from_amount(1.00, 'GBP'))
    assert_equal('€1,00', JekyllMoney::Core.money_from_amount(1.00, 'EUR'))
  end
end
