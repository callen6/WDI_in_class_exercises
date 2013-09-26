class Person
	att_accessor :fname,:lname
	# a class can define an instance method
	# initialize just happens every time you create a new class
	def initialize(fname,lname, birthday)
		@fname = fname
		@lname = lname
		@birthday = birthday
		puts "creating an instance of Person #{@name}"
	end

	# attributes are like nouns
	def name
		"#{@fname} + #{@lname}"
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

	def name=

	def say_hi
		"Hi"
	end

	def to_s
		"i'm a person"
	end
end

tgt = Person.new("Tom", "Sawyer", 1)
puts tgt.zodiac
puts tgt.name
puts tgt.say_hi
puts tgt
fred.lname = "Solo"

# when you call puts on a class the default is to_s
# any class is an instance of another class named Class