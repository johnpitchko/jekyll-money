module JekyllMoney2
  module Filter
    def money(value, currency = "USD")
      config = @context.registers[:site].config.fetch('jekyll_money2', {})
      JekyllMoney2::Core.money(value, currency, config)
    end

    def money_from_amount(value)
      JekyllMoney2::Core.money_from_amount(value)
    end
  end
end
