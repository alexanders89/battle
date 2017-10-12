require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

  enable :sessions

  get '/test' do
    "Testing infrastructure working!"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    Game.new($player_1, $player_2).attack($player_2)
    erb(:attack)
  end

  run! if app_file == $0

end
