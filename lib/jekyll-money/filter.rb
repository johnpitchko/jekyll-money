module JekyllMoney
  module Filter
    def money(value, currency = "USD")
      config = @context.registers[:site].config.fetch('jekyll_money', {})
      JekyllMoney::Core.money(value, currency, config)
    end

    def money_from_amount(value)
      JekyllMoney::Core.money_from_amount(value)
    end
  end
end
