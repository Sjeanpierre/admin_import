require 'sinatra'
require 'coffee-script'
require 'pry'
require_relative 'import.rb'

get '/' do
  erb :index
end

get '/app.js' do
  coffee :app
end

post '/import' do
  require 'pry'; binding.pry
  erb :index
end
