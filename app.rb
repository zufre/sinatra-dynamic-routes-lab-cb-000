require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverseName = parmas[:name].reverse
    "#{@reverseName}"
  end

end
