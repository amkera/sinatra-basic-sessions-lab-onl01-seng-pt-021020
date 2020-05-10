require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions
    set :session_secret, "lime_tea_with_honey"
  end 
  
  get '/' do 
    erb :index
  end 
  
  post '/checkout' do 
    @sessions = params["sessions"]
  end 
  
  
end