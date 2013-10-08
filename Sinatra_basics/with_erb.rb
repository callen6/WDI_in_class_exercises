require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do
# this is not accessible in the view
	something = "foo"
# this is accessible in the view
 	@message = "Hello Index!"
	erb :hello
end

get '/colors' do
	@colors = ['red', 'green', 'blue']
	erb :colors
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
	@colors = [add, subtract, multiply, divide]
	erb :colors
end

get '/calc/:operation/:x/:y' do

	operation = params[:operation].to_s
	x = params[:x].to_f
	y = params[:y].to_f

	if operation == 'add'
		add = (x + y).to_s
		@result = "Adding #{x} to #{y} gives #{add}."
	elsif operation == 'subtract'
		subtract = (x - y).to_s
		@result = "Subtracting #{x} from #{y} leaves #{subtract}."
	elsif operation == 'multiply'
		multiply = (x * y).to_s
		@result = "Multiplying #{x} and #{y} gives #{multiply}."
	elsif operation == 'divide'
		divide = (x / y).to_s
		@result = "Dividing #{x} by #{y} leaves #{divide}."
	else
		@result = "404. I think they're teaching us that in 8th grade. Can you wait awhile?"
	end

	erb :calculator

	# case/when/then syntax example:
	# case operation
	# when 'add' then (x+y)to.s
	# when 'subtract' then (x-y).to_s
	#etc.
end
