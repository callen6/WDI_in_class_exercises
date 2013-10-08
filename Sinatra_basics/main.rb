require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
	"Hello Index!"
end

# get = HTTP method (get, post, delete) '/hi' = path
get '/hi' do
	"Hello World!"
end

get '/maths' do
	(1 + 3).to_s
end

get '/time' do
	Time.now.to_s
end

get '/advanced_time' do
	"<h1>The time is now #{Time.now}</h1>"
end

get '/maths/add/:x/:y' do
	x = params[:x].to_f
	y = params[:y].to_f
	(x+y).to_s
end

get '/calculator/:x/:y' do
	x = params[:x].to_f
	y = params[:y].to_f
	add = (x + y).to_s
	subtract = (x - y).to_s
	multiply = (x * y).to_s
	divide = (x / y).to_s
	"Adding #{x} to #{y} gives #{add}.
	Subtracting #{x} from #{y} leaves #{subtract}.
	Multiplying #{x} and #{y} gives #{multiply}.
	Dividing #{x} by #{y} leaves #{divide}."
end