require 'sinatra'
require 'sinatra/reloader'

require_relative 'content/data'

get '/' do
  erb :index
end

get '/style.css' do
  scss :style
end
