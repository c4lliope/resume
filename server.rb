require "sinatra"
require "sinatra/reloader"
require "yaml"
require "redcarpet"

class HTMLWithPants < Redcarpet::Render::HTML
  include Redcarpet::Render::SmartyPants
end

Tilt.register Tilt::RedcarpetTemplate::Redcarpet2, 'markdown', 'mkd', 'md'
set :markdown, renderer: HTMLWithPants

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
