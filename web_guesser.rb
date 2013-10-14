require 'sinatra'

random_number = rand(100)

  get '/' do 
    "The secret number is #{random_number}"
  end
