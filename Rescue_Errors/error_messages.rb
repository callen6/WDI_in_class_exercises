puts "What's your first number?"
first = gets.chomp.to_i
puts "What's your second number?"
second = gets.chomp.to_i

begin   # inside the begin goes the code that might cause a problem
    result = first/second

rescue ZeroDivisionError => error_message
	# inside the rescue goes the code that we want
	# to run if a specific error occurs
    puts error_message
else
	# any other errors fall here
end

puts result