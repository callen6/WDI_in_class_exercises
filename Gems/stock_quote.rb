require 'stock_quote'

#puts StockQuote::Stock.quote('AAPL').last

puts "What stock would you like to know about? Please use the stock's symbol."
stock_sym = gets.chomp.upcase.to_s

stock = StockQuote::Stock.quote(stock_sym)
p "#{stock_sym} trades on the #{stock.exchange}"
p "#{stock_sym}'s last value was: #{stock.last}"
p "#{stock_sym} is trading at an average volume of #{stock.avg_volume}."
