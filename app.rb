require_relative 'config/environment'

class App < Sinatra::Base

  configure do
      enable :sessions
      set :session_secret, 'pw'
  end

  get '/' do
    erb :'index'
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session

    @cart = Item.new(item: params[:item], price: params[:price])
    @checkout = Checkout.new(user: params[:user], total: params[:total])
    erb :'checkout'
  end
end