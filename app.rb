require_relative 'config/environment'
require_relative 'models/piglatinizer'
class App < Sinatra::Base

get '/' do 
    
    
    erb :user_input
end

post '/piglatinize' do 
    input = PigLatinizer.new
    @output = input.piglatinize(params["user_phrase"])

    
    erb :results
end 

# get '/piglatinize' do 
#    erb :results
# end 




end
