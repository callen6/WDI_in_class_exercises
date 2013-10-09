require 'pry'
require 'sinatra'
require 'pg'
require 'sinatra/reloader' if development?

#in here goes code that just runs once when sinatra is loaded
configure do
	CONN = PG.connect(dbname: 'ga-class', host: 'localhost')
end

def query(sql)
	CONN.exec(sql)
end

get '/students' do
	@students = query("SELECT * FROM students")
	erb :students_index	
end