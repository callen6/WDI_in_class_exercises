
# # this is the most simple case of handling args
# def distance(x1, y1, x2, y2)
# 	Math.hypot(x2 - x1, y2 - y1)
# end

# d = distance(4,0,10,6)
# puts "distance is #{d}"


# # optional arguments
# fname = 'lorem.txt'
# def load_file(fname, mode = 'rb')
# 	File.open(fname, mode) do |f|
# #		f.read
# 		f.write("same blathering idiotic stuff")
# 	end
# end

# contents = load_file(fname)
# puts "contents = #{contents}"

# contents = load_file(fname, 'w')
# puts "contents = #{contents}"

# fname = 'lorem.txt'
# def load_file(fname, mode = 'rb', num_of_time_to_read)
# 	num_of_time_to_read.times do
# 		puts "reading file #{fname}"
# 		puts "param mode is #{mode}"
# 		File.open(fname, mode) do |f|
# 			f.read#write("some blathering idiotic stuff")
# 		end
# 	end
# end	

# contents = load_file(fname, 3)

# def story(options)
# 	"#{options[:person]} went to town, riding on a #{options[:animal]}"
# end

# s1 = story({ animal: 'tiger', person: 'George Bush' })
# puts s1

# s2 = story(animal: 'Baboon', person: 'Morty')
# puts s2

# s3 = story animal: 'Giraffe', person: 'Jack'
# puts s3

def story(options = {})
	puts "options passed to this method = #{options}"
	default_options = {:animal => 'Baboon', :person => 'Morty'}.merge(options)
	opts = default_options.merge(options)

	"#{opts[:person]} went to town, riding on a #{opts[:animal]}"
end

s1 = story(:animal => "dog", :person => "Tina Fey", :animal => "cat")
puts s1

# • Try to keep the number of ordinal arguments in your methods to a minimum.
# • If your method has multiple parameters with default values, consider using pseudo- keyword arguments via an options hash.
# • Use the array splat operator (*) when you want to slurp up your arguments and pass them to another method.
# • The *args idiom can lead to complicated code.
# • Don’t use *args when a normal combination of mandatory ordinal arguments and an options hash will do.
# • If some parameters are mandatory, avoid putting them in an options hash, and instead write a signature like foo(mandatory1, mandatory2, options={}), unless there is a good reason not to.







