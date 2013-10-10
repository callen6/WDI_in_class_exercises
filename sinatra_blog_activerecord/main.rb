require 'pry'
require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require	'sinatra/activerecord'

class Post <ActiveRecord::Base

end

get '/' do
	# @posts = query('SELECT * FROM posts')
	@posts = Post.all
	erb :post_index
end