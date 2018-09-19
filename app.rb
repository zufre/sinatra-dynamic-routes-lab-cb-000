require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverseName = params[:name].reverse
    "#{@reverseName}"
  end

  get '/squere/:number' do
    @square = (params[:number].to_i)**2
    "#{@square}"
  end

end
