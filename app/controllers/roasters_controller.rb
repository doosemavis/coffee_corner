class RoastersController < ApplicationController

    get '/roasters' do
        # binding.pry
        @roasters = current_user.roasters
        erb :'roasters/index'
    end
    
    post '/logout' do 
        redirect '/users'
    end

    get '/roasters/new' do 
        erb :'roasters/new'
    end

    post '/roasters' do 
        # binding.pry
       current_user.roasters.create(name: params[:name], 
       address: params[:address])

       redirect '/roasters'
    end 
end