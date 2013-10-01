class Person
	# attr_accessor :age
	def age
		@age
	end

	def age=(age)
		raise AgeError, "Age of #{age} is invalid." if age < 0
		@age = age
	end
end

class AgeError < RuntimeError
end

me = Person.new

puts "Whats your age"
my_age = gets.chomp.to_i

begin 
	me.age=my_age
rescue AgeError => error
	puts error.message
end

puts me.age