require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

    get "/square/:number" do
    @num = params[:number].to_i
    @squared = @num * @num
    "#{@squared}"
    end

    get "/say/:number/:phrase" do
      @num = params[:number].to_i
      @word = params[:phrase]
      @result = @word * @num
      "#{@result}"
    end

    get "/say/:word1/:word2/:word3/:word4/:word5" do
      @results = [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]].join(" ") + '.'
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
      else params[:operation] == 'divide'
        @result = params[:number1].to_i / params[:number2].to_i
        @result.to_s
      end


      end


  




end