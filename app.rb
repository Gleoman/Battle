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
    # game = Game.new(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
    @player1 = Player.new(params[:player1_name])
    # binding.pry
    @player2 = Player.new(params[:player2_name])
    # binding.pry
    $game = Game.new(@player1, @player2)
    # binding.pry
    redirect '/play'
  end

  get '/play' do
    # binding.pry
    @player1_name = $game.player1.name
    # binding.pry
    @player2_name = $game.player2.name
    erb :play
  end

  get '/attack' do
    $game.attack($game.player2)
    erb :attack
  end

run! if app_file == $0

end
