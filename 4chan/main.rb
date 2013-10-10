require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

configure do
	CONN = PG.connect(dbname: 'ga-class', host: 'localhost')
end

def query(sql)
	CONN.exec(sql)
end

get '/home' do
	@posts = query("SELECT * FROM chan")
	erb :home
end

get '/home/new' do
	erb :post_new
end

post '/home/create' do
	image_url = params[:image_url]
	body = params[:body]
	author_name = params[:author_name]
	query("INSERT INTO chan (image_url, body, author_name) VALUES ('#{image_url}', '#{body}', '#{author_name}')")
	redirect "/home"
end

get '/home/:id' do
	post_id = params[:id]
	@post = query("SELECT * FROM chan WHERE id = #{post_id} LIMIT 1").first
	erb :post_show
end

post "/home/:id/delete" do
 post_id = params[:id]
 query("DELETE FROM chan WHERE id=#{post_id}")
 redirect "/home"
end

post '/home/:id/update' do
	post_id = params[:id]
	image_url = params[:image_url]
	body = params[:body]
	author_name = params[:author_name]
	query("UPDATE chan SET image_url = #{image_url}, body = #{body}, author_name = #{author_name} WHERE id=#{post_id}")
	redirect "/home/#{post_id}"
end

get '/home/:id/edit' do
	post_id = params[:id]
	@post = query("SELECT * FROM chan WHERE id = #{post_id} LIMIT 1").first
	erb :post_edit
end