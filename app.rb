require_relative 'lib/player'
require_relative 'lib/game'
require 'sinatra/base'


class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  get '/test' do
    'Testing infrastructure working!'
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.defender)
    erb :attack
  end

  get '/heal' do
    @game.attacker.heal
    erb :heal
  end

  post '/switch-turn' do
    @game.switch_turn
    redirect '/play'
  end

  get '/end-game' do
    erb :end_game
  end

  run! if app_file == $0
end
