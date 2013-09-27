# when you make an attr_accessor list, you make those attributes into methods you 
# can call on the class throughout the program "#{building1.address}"

class Building
	attr_accessor :apartments
		def initialize
			@apartments = []
end

building1 = Building.new
building1.apartments << apartment1