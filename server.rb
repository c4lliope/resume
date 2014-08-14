require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  @data =  JSON.parse File.read('content.json')
  erb :index
end

get '/style.css' do
  scss :style
end
