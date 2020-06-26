require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name].reverse!
    "The reversed name is #{@user_name}"
  end

  get '/square/:number' do
    @result = (params[:number].to_i ** 2).to_s
    "The result is #{@result}"
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + '.'
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == 'add'
      @result = params[:number1].to_i + params[:number2].to_i
      @result.to_s
    elsif params[:operation] == 'subtract'
      @result = params[:number2].to_i - params[:number1].to_i
      @result.to_s
    elsif params[:operation] == 'multiply'
      @result = params[:number1].to_i * params[:number2].to_i
      @result.to_s
    elsif params[:operation] == 'divide'
      @result = params[:number1].to_i / params[:number2].to_i
      @result.to_s
    else
      "I don't know that one."
    end
  end
end