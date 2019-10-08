require_relative 'config/environment'

class App < Sinatra::Base
  
    get '/reversename/:name' do
      reverse_name = params[:name].reverse
      "#{reverse_name}"
    end

    get '/square/:number' do
      number = params[:number].to_i
      "#{number**2}"
    end

    get 'say/:number/:phrase' do
      num = params[:number].to_i
      phrase = params[:phrase]
      num.times { "#{phrase}"}
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      word1 = params[:word1]
      word2 = params[:word2]
      word3 = params[:word3]
      word4 = params[:word4]
      word5 = params[:word5]
      "#{word1} #{word2} #{word3} #{word4} #{word5}." 
    end

    get '/:operation/:number1/:number2' do
      add = params[:operation] 
      subtract = params[:operation]
      multiply = params[:operation]
      divide = params[:operation]
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i
      "#{num1 add num2}"
      "#{num1 subtract num2}"
      "#{num1 multiply num2}"
      "#{num1 divide num2}"
    end
   

