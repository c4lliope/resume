require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  @data =  JSON.parse File.read('content.json')
  erb :index
end

get '/about' do
  erb :about
end

get '/style.css' do
  scss :style
end

get '/print.css' do
  scss :print
end
