class RoastersController < ApplicationController

    get '/roasters' do
        binding.pry
        erb :'roasters/index'
    end
    
    post '/logout' do 
        redirect '/users'
    end
end