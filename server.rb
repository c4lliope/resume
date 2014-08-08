require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/style' do
  scss :style
end
