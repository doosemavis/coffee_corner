require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :session
    set :session_secret, ENV["SESSION_SECRET"]
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end
    
    def current_user
      @current_user ||= User.find_by(session[:user_id]) if session[:user_id]
    end
  end

end
