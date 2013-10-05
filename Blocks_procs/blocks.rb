students = ['peregrin took', 'samwise gangee', 'frodo baggins', 'meriadoc brandybuck']
# students.each { |student| puts student.capitalize }
# puts "\n"
# students.each { |student| puts "student is #{student.capitalize}"}
# puts "\n"
# puts "frodo baggins".split(" ").class
# puts "\n"
# puts "frodo baggins".split(" ")
# puts "\n"
# hobbits = students.map { |student| student + " is a hobbitses"}
# puts hobbits.class
# puts "\n"
# puts hobbits
# puts "\n"
# hobbitses = students.map do |student|
# 	student << "is a hobbit"
# 	end.map do |s|
# 	s << " something else"
# end
# puts hobbitses
# puts "\n"
# map_hobbits = students.map(&:capitalize)

# map_hobbitses = students.map do |student|
# 	student.capitalize
# end

# puts "\n"
# puts map_hobbits
# puts "\n"
# puts map_hobbitses
# puts "\n"

# students.each do |student|
# 	unless student == 'samwise gangee'
# 		p student.split(" ").map(&:capitalize).join(" ")
# 	else
# 		p student
# 	end
# end
# puts "\n"

# 3.times { puts "hello" }

# 5.upto(10) do 
# 	puts "hello"
# end

# require_relative 'my_array'

# a1 = MyArray.new(["one", "lady", "3", "canola oil", "zing!" ])
# a1.my_each do |s|
# 	p "element is #{s}"
# end

# a2 = MyArray.new([3,5,7])
# total = a2.inject(0) do |sum, el|
# 	p "el = #{el}"
# 	p "sum = #{sum}"
# 	sum += el + 2
# 	end
# p total


cap_hobbits = []
students.each do |student|
	cap_hobbits << student.capitalize
end

cap_hobbits_another_time = []
something = students.each do |student|
	cap_hobbits_another_timerm- << student.capitalize
end

cap_hobbits2 = students.map(&:capitalize)

cap_hobbits3 = students.map do |student|
	student.capitalize
end

puts something
puts "\n"
puts cap_hobbits
puts "\n"
puts cap_hobbits2
puts "\n"
puts cap_hobbits3
puts "\n"




























