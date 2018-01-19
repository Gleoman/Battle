require 'sinatra/base'
require './lib/player'
require './lib/game'
require 'pry'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack_P2' do
    $game.attack($game.player2)
    erb :attack_P2
  end

  get '/attack_P1' do
    $game.attack($game.player1)
    erb :attack_P1
  end

run! if app_file == $0

end
