require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  params = {
    :name => "Carl",
    :favorite_food => "fried chicken"
  }
  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}."
  end

end