require "sinatra/base"
require "sinatra/reloader"
require_relative "lib/player"

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  # Home Page
  get "/" do
    erb :index
  end

  post "/names" do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    # session[:player_1_name] = params[:player_1_name]
    # session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    @player_2_hp = 100
    erb :play
  end

  get "/attack" do
    # @player_2_name = session[:player_2_name]
    erb :attack
  end

  run! if app_file == $0
end
