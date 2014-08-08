require 'sinatra'
require 'sinatra/reloader'

get '/' do
  send_file './content.json'
end
