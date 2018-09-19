require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverseName = params[:name].reverse
    "#{@reverseName}"
  end

  get '/square/:number' do
    "#{((params[:number].to_i)**2)}"
  end

  get '/say/:number/:phrase' do
    phrase = ""
    num = params[:number].to_i
    num.times do
      phrase += "#{params[:phrase]}"
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
end
