require 'sinatra'

  get '/' do 
    stored_number = "The secret number is #{rand(100)}"
    stored_number 
  end
