# 10.times do
# 	puts "hello"
# end
puts "how many times?"
x = gets.chomp.to_i

x.times do
	puts "hello"
end


x.times do |time|
	puts "Hello. This was the #{time} loop."
end

(0..x).step(2) do |time|
	puts "Skipping along by 2 #{time}."
end