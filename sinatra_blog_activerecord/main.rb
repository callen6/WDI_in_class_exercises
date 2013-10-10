require 'pry'
require 'pg'
require 'rake'
require 'sinatra'
require 'sinatra/reloader' if development?
require	'sinatra/activerecord'

set :database, {adapter: "postgresql",
								database: "ga-class-posts",
								host: "localhost"}

#class names must be singular
class Post < ActiveRecord::Base
end

get '/' do
	# @posts = query('SELECT * FROM posts')
	@posts = Post.all
	binding.pry
	erb :post_index
end