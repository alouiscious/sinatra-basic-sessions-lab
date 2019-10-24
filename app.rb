require_relative 'config/environment'

class App < Sinatra::Base

  configure do
      enable :sessions
      set :session_secret, "pw"
  end

  get '/auth' do
    session["item"] = (params[:item])
    @session = session
  end

  get '/' do
    erb :'index'
  end

  post '/checkout' do
    @items = Checkout.new(item: params[:checkout][:item])
    
    erb :'checkout'
  end
end