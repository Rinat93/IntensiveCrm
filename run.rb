require 'sinatra'
require 'core/Core'
get '/' do
  core = Core.new
  'a+b-2*5'.formuls({a:5,b:15}).to_s
end

get "/hello/:name" do
  "Hello, #{params[:name]}."
end

not_found do
  status 404
  "К сожалению данной страницы не существует! :( "
end

