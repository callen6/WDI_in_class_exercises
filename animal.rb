# Inheritance is about ways of sharing code so that you don't 
# have to write things over and over

# define a parent Animal class
# class names are Capitalized
class Animal
	def move
		"I can't move"
	end
end

a1 = Animal.new
puts a1.move

# define a Mammal class that inherits from Mammal
class Mammal < Animal
	attr_accessor :age

	def initialize(its_age)
		@age = its_age
	end
	def eat
	 "I can eat yum yum yum"
	end
	def speak
	 "i can speak"
	end
end


m1 = Mammal.new(33)
puts m1.eat
puts m1.speak
puts m1.move

class Reptile < Animal
	def slither
		"slither"
	end
end

r1 = Reptile.new
puts r1. slither
puts r1.move

class Dog < Mammal
	def initialize(name, dog_age)
		super(dog_age)
		@name = name
	end
	def speak
		super 
		"WOOF"
	end
end

fido = Dog.new('fido', 5)
puts fido.speak

class Poodle < Dog

end

scrunchy = Poodle.new('scrunchy', 7)
puts scrunchy.age
