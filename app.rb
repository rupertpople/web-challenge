require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'Hello world!'
end

get '/animal/' do
  'This is an animal. Its a giraffe!'
end

get '/pet/' do
  'This is a dog. He is called Milo. He is a french bulldog.'
end