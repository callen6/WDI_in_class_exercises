class Person
	# a class can define an instance method

	# initialize just happens every time you create a new class
	def initialize(name, birthday)
		@name = name
		@birthday = birthday
		puts "creating an instance of Person #{@name}"
	end

	# attributes are like nouns
	def name
		return @name
	end
	# methods are like verbs
	def zodiac
		case @birthday
		when 1
			return "taurus"
		when 2
			return "virgo"
		end
	end	

	def say_hi
		"Hi"
	end

	def to_s
		"i'm a person"
	end
end

tgt = Person.new("Tom", 1)
puts tgt.zodiac
puts tgt.name
puts tgt.say_hi
puts tgt


# when you call puts on a class the default is to_s