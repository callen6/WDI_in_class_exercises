### This is a possibility but a bad one
# def factorial(x)
# 	begin 
# 		x * factorial(x)
# 	rescue  SystemStackError => error
# 		puts "#{error.message}"
# 	end
# end

###
def factorial(x)
	x * factorial(x-1)
end

begin 
	factorial(5)
rescue  SystemStackError => error
	puts "#{error.message}"
end


