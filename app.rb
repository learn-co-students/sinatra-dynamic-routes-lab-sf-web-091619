require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    
    get('/reversename/:name') { params[:name].reverse }

    get('/square/:number') { (params[:number].to_i * params[:number].to_i).to_s }

    get('/say/:number/:phrase') { params[:phrase] * params[:number].to_i }

    get '/say/:word1/:word2/:word3/:word4/:word5' do
        p params[:word1] + " " + params[:word2] + " " +  params[:word3] + 
            " " + params[:word4] + " " +  params[:word5] + "."
    end

    get '/:operation/:number1/:number2' do
        #math = params[:number1] + params[:operation] + params[:number2]
        if params[:operation] == "add"
            (params[:number1].to_i + params[:number2].to_i).to_s
        elsif params[:operation] == "subtract"
            (params[:number1].to_i - params[:number2].to_i).to_s
        elsif params[:operation] == "multiply"
            (params[:number1].to_i * params[:number2].to_i).to_s
        elsif params[:operation] == "divide"
            (params[:number1].to_i / params[:number2].to_i).to_s
        else
            "YOU DUN GOOF'D!"
        end
    end
end