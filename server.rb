require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/style.css' do
  scss :style
end

get '/normalize.css' do
  send_file 'views/normalize.css'
end
