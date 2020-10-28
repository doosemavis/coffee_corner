class BeveragesController < ApplicationController

    
    get '/roasters/:roaster_id/beverages/new' do 
        # binding.pry
        @roaster_id = params[:roaster_id].to_i
        erb :'beverages/new'
    end

    post '/roasters/:roaster_id/beverages/new' do
        # binding.pry
        # find roaster using roaster_id from params and store in roaster variable
        # make beverage in that roasters collection of beverages
        current_user.roasters
        roaster.beverages.create

        beverage = roaster.create(name: params[:name],
        ingredients: params[:ingredients],
        size: params[:size],
        roaster_id: params[:roaster_id].to_i)

        redirect '/roasters'
    end 

    post '/beverages' do 

    end 
end