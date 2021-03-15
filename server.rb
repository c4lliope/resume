require "sinatra"
require "sinatra/reloader"
require "yaml"
require "redcarpet"

set :bind, '0.0.0.0'

get "/" do
  @data = YAML.load_file "content.yml"
  erb :index
end

get "/about" do
  erb :about
end

get "/style.css" do
  scss :style
end

get "/print.css" do
  scss :print
end
