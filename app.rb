require_relative 'config/environment'

class App < Sinatra::Base

get '/' do
    erb :user_input
end

post '/piglatinize' do
    input = params[:user_phrase]
    new_pig = PigLatinizer.new
    @translation = new_pig.translate(input)

    erb :piglatinize
end

end