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
    num = params[:number]
    num.times do
      phrase += "#{params[:number]}"
    end

  end

end
