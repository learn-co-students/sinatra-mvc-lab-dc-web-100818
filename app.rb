require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    inputed = params[:user_phrase]
    new_instance =PigLatinizer.new
    @piglatin = new_instance.piglatinize(inputed)

    erb :results
  end
end
