require 'rubygems'
require 'yahoofinance'

# Set the type of quote we want to retrieve.
# Available type are:
#  - YahooFinanace::StandardQuote
#  - YahooFinanace::ExtendedQuote
#  - YahooFinanace::RealTimeQuote
quote_type = YahooFinance::StandardQuote

# Set the symbols for which we want to retrieve quotes.
# You can include more than one symbol by separating 
# them with a ',' (comma).
quote_symbols = "goog"

# Get the quotes from Yahoo! Finance.  The get_quotes method call
# returns a Hash containing one quote object of type "quote_type" for
# each symbol in "quote_symbols".  If a block is given, it will be
# called with the quote object (as in the example below).
# YahooFinance::get_quotes( quote_type, quote_symbols ) do |qt|
#   puts "QUOTING: #{qt.symbol}"
#   puts qt.to_s
# end

# You can get the same effect using the quote specific method.
quotes = YahooFinance::get_standard_quotes( quote_symbols )
quotes.each do |symbol, qt|
    puts "QUOTING: #{symbol}"
    puts qt.to_s
end
