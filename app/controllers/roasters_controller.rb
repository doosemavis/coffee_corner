class RoastersController < ApplicationController

    get '/roasters' do
        @roasters = current_user.roasters
        erb :'roasters/index'
    end
    
    post '/logout' do 
        redirect '/users'
    end
end