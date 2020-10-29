class RoastersController < ApplicationController

    get '/roasters' do
        # binding.pry
        if logged_in?
            @roasters = current_user.roasters
            erb :'roasters/index'
        else
            redirect '/login'
        end
    end

    get '/roasters/new' do
        if logged_in?
            erb :'roasters/new'
        else
            redirect '/login'
        end
    end

    post '/roasters' do 
        if logged_in?
            roaster = current_user.roasters.create(name: params[:name], 
            address: params[:address])

            if roaster
                redirect '/roasters'
            else 
                redirect 'roasters/new'
            end

        else
            redirect '/login'
        end
    end 
end