require 'pry'
require 'pg' 
# db is hash of string keys
conn = PG.connect(dbname: 'ga-class', host: 'localhost') 
puts "U name?" 
name = gets.chomp 
puts "U address?"
address = gets.chomp
puts "U founded?"
founded = gets.chomp
puts "U ugrads?"
ugrads = gets.chomp
puts "U grads?"
grads = gets.chomp
puts "U rankings?"
rankings = gets.chomp
puts "U avg sat?"
sat = gets.chomp

result = conn.exec("INSERT INTO universities(name, address, founded, undergrads, grads, rankings, avg_SAT) VALUES ('#{name}', '#{address}', '#{founded}', '#{ugrads}', '#{grads}', '#{rankings}', '#{sat}')") 

result = conn.exec("SELECT * FROM universities") 

binding.pry