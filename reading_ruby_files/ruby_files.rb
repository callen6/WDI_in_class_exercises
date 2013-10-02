fname = "lorem.txt"
contents = File.open(fname, 'r') do |file|
	file.read
end

puts "contents of the file are #{contents}"