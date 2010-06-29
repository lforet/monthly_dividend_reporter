require 'yahoofinance'

class YahooIntegrator
  def initialize(quote_symbols, quote_type = YahooFinance::ExtendedQuote)
    # symbols is an array of strings that will be retrieved and saved
    # type is an instance of the yahoofinance quote types 
    # Availible Types are:
    # YahooFinance::StandardQuote
    # YahooFinance::ExtendedQuote
    # YahooFinance::RealTimeQuote
    @quote_type = quote_type
    @quote_symbols = quote_symbols
  end

  # attr_accessor @quote_type, @quote_symbols

  def run
    # Get the quotes from Yahoo! Finance.  The get_quotes method call
    # returns a Hash containing one quote object of type "quote_type" for
    # each symbol in "quote_symbols".  If a block is given, it will be
    # called with the quote object (as in the example below).
    # YahooFinance::get_quotes( quote_type, quote_symbols ) do |qt|
    #   puts "QUOTING: #{qt.symbol}"
    #   puts qt.to_s
    # end
    # You can get the same effect using the quote specific method.
    quotes = YahooFinance::get_quotes(@quote_type, @quote_symbols) do |qt|
      last_price = YahooFinance::get_quotes(YahooFinance::StandardQuote, qt.symbol)[qt.symbol].lastTrade
      Quote.create(:ticker => qt.symbol, :name => qt.name, 
                   :dividend => qt.dividendYield, :exdate => Date.parse(qt.exDividendDate),
                   :dividend_per_share => qt.dividendPerShare, 
                   :last_price => last_price )
    end
  end
end
