require 'rubygems'
require 'sinatra'

get '/' do
  erb :index
end

post '/is_it_the_best' do
  @movie = params[:movie]
  erb :is_it_the_best
end