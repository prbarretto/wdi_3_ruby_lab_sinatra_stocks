require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'yahoo_finance'

get '/quote/:ticker' do
	@ticker = params[:ticker]
	@result = YahooFinance.quotes([@ticker], [:last_trade_price])[0]
  erb :quote
end

