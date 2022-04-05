require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'Hello world!'
end

get '/animal/' do
  'This is an animal. Its a elephant!'
end

get '/pet/' do
  'This is a dog. He is called Milo. He is a french bulldog.'
end

get '/random-cat/' do
  @cat_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @cat_name = params[:cat_name]
  erb(:index)
end