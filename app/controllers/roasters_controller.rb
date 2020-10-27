class RoastersController < ApplicationController

    get '/roasters' do
        @user = User.find_by(session[:username])
        binding.pry
        erb :'roasters/index'
    end
    
    post '/logout' do 
        redirect 'users/'
    end
end