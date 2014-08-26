require 'sinatra'
require 'sinatra/reloader'
require 'yaml'

get '/' do
  @data =  YAML.load_file 'content.json'
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
