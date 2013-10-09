require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'pg'

configure do
	CONN = PG.connect(dbname: 'ga-class', host: 'localhost')
end

def query(sql)
	CONN.exec(sql)
end

get '/universities' do
	@universities= query("SELECT * FROM universities")
	erb :universities
end