my_pets = {}
my_pets = Hash.new

# hash
my_motorcycles = {blue: "blue", red: "red", yellow: "yellow"}

#sometimes i need to take user input or a string, and search for that as a key, but the key is a symbol
user_input = "blue"
my_motorcycles[user_input.to_sym] #output value

# hashes are definitions, 
# this will redefine the value of the item with a key of :blue  to be "green"
my_motorcycles[:blue] = "green"

# to define a new one, do the same syntax
my_motorcycles[:pink] = "pink"

# to delete
my_motorcycles.delete(:pink)


#to access an item in a hash you need to call its key
my_motorcycles[:blue] # return "blue"

#some hashes use strings for keys, that's fine too
my_guitars = {"blue" => "blue", "red" => "red"}

#to access a string-key'd hash do this:
my_guitars["blue"]

my_guitars.each do |model, make|
	puts "#{model} #{make}"
end