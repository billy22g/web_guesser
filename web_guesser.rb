require 'sinatra'
require 'sinatra/reloader'  

  SECRET_NUMBER = rand(100)

  get '/' do
    guess = params["guess"]
    message = check_guess(guess)  
    color = check_color(message) 
    erb :index, :locals => {:number => SECRET_NUMBER, :message => message, :color => color}
  end

  def check_guess(guess)  
    if guess.to_i > SECRET_NUMBER + 5
      "Way too high!"
    elsif guess.to_i < SECRET_NUMBER - 5
      "Way too low!"
    elsif guess.to_i == SECRET_NUMBER
      "Correct! You da bomb! The secret number is #{SECRET_NUMBER}"
    elsif guess.to_i > SECRET_NUMBER
      "Too high!"
    elsif guess.to_i < SECRET_NUMBER
      "Too low!"
    end
  end

  def check_color(message)
    if message == "Way too high!"
      "red"
    elsif message == "Way too low!"
      "red"
    elsif message == "Correct! You da bomb! The secret number is #{SECRET_NUMBER}"
      "green"
    elsif message == "Too high!"
      "pink"
    elsif message == "Too low!"
      "pink"
    end
  end
    
