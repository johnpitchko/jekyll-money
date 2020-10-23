module JekyllMoney
  module Filter
    def money(value, currency = "USD")
      config = @context.registers[:site].config.fetch('jekyll_money', {})
      JekyllMoney::Core.money(value, currency, config)
    end

    def to_money(value)
      JekyllMoney::Core.to_money(value)
    end
  end
end
