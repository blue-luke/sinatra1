require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  'This is a DIFFERENT secret'
end

get '/public' do
  "<h1>This is the public page</h1>"
end

get '/public/news' do
  'Interest rates are up'
end

get '/random-cat' do
  @random_name = ["Amigo", "Misty", "Almond"].sample
  @current_time = Time.new
  erb(:index)
end

post '/named-cat' do
  p params
  @random_name = params[:name]
  @current_time = Time.new
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end


