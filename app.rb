require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    square = params[:number].to_i * params[:number].to_i
    square.to_s
  end

  get '/say/:number/:phrase' do
    repeat = []
    params[:number].to_i.times { repeat << params[:phrase] }
    repeat.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ") + '.'
    # string_arr + '.'
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      sum = params[:number1].to_i + params[:number2].to_i
      sum.to_s
    when 'subtract'
      subtract = params[:number2].to_i - params[:number1].to_i
      subtract.to_s
    when 'multiply'
      product = params[:number1].to_i * params[:number2].to_i
      product.to_s
    when 'divide'
      divide = params[:number1].to_i / params[:number2].to_i
      divide.to_s
    end
  end



end