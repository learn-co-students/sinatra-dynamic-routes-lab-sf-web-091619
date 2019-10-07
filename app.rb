require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    new_word = ""
    @number.to_i.times do 
      new_word += "#{@phrase}"
    end
    new_word
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    new_word = @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      result = @number1.to_i + @number2.to_i
      result.to_s
    elsif @operation == "subtract"
      result = @number1.to_i - @number2.to_i
      result.to_s
    elsif @operation == "multiply"
      result = @number1.to_i * @number2.to_i
      result.to_s
    elsif @operation == "divide"
      result = @number1.to_i / @number2.to_i
      result.to_s
    end
  end
end