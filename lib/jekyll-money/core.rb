require "money"

# Implemement 'per currency' localization to keep life simple
# Also suppresses deprecation warnings
# https://github.com/RubyMoney/money#localization
Money.locale_backend = :currency

module JekyllMoney
  module Core
    extend self

    def money(value, currency = "USD", options = {})
      @defaults = defaults unless defined?(@defaults)
      @options = @defaults.merge(options)

      value = validate_money!(value, currency)
      format_money(value, currency, options)
    end

    def money_from_amount(value, currency = 'USD', options = {})
      value = Money.from_amount(value, currency)
      format_money(value, currency, options)
    end

    private

    def validate_money!(value, currency)
      Money.new(value, currency)
    end

    def format_money(value, currency = "USD", options = {})
      Money.new(value, currency).format
    end

    # @see http://www.rubydoc.info/gems/money/
    def defaults
      {
        "conversion_precision" => Money.conversion_precision,
        "default_bank" => Money.default_bank,
        "default_currency" => Money.default_currency,
        "default_formatting_rules" => Money.default_formatting_rules,
        "infinite_precision" => Money.infinite_precision,
        "rounding_mode" => Money.rounding_mode,
        "use_i18n" => Money.use_i18n
      }
    end
  end
end
