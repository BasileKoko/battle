require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
     erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @player_1 = @game.player1
    @player_2 = @game.player2
    erb :play
  end

  get '/attack' do
    @game = $game
    @player_1 = @game.player1
    @player_2 = @game.player2
    @game.attack_player(@player_2)
    erb :attack

  end

  get '/switch' do
    @game = $game
    @player_1 = @game.player1
    @player_2 = @game.player2
    erb :switch
end

  get '/attack_for_player_two' do
    @game = $game
    @player_1 = @game.player1
    @player_2 = @game.player2
    @game.attack_player(@player_1)
    erb :attack_for_player_two
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
