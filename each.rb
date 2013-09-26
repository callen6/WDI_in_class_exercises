# my_friends = ["Chris", "Rich", "Sarah", "Maggie"]

# my_friends[3] # return "Maggie"

# my_friends[-1] # also return "Maggie"

# my_friends[-2] # return Sarah

# my_friends[-5] # nil, doesn't loop back through

# my_friends.each do |friend|
# 	puts friend.upcase
# end

# # this will iterate through all my firneds, and 'friend' will change each time
# my_friends.each do |friend|
# 	puts friend.upcase
# end
# my_cat = "Jade"
# my_friends.each_with_index do |friend, number|
# 	puts "#{number} : #{friend} and my cat #{my_cat}"
# end

# the following are the same
# if it is on a hash, .each outputs a key/value pair
my_guitars = {mustang: "Fender", 
			telecaster: "Fender", 
			les_paul: "Gibson", 
			gr707: "Roland"}

my_guitars.each do |model, make|
	puts "#{model}: #{make}"
end

my_guitars.each do |key, value|
end