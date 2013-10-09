require 'pry'
require 'pg' # database gem
# db is hash of string keys
conn = PG.connect(dbname: 'ga-class', host: 'localhost') # est connection to database
puts "First name?" # prompt for user input
first_name = gets.chomp # assign user input to variable
puts "Last name?"
last_name = gets.chomp
result = conn.exec("INSERT INTO students(first, last) VALUES ('#{first_name}', '#{last_name}')") #executes SQL statement using Ruby sting interpolation
					# to insert a new student
result = conn.exec("SELECT * FROM students") # this executes a SQL statement to 
										# query database for all studens
binding.pry