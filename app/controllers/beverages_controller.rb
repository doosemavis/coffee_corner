class BeveragesController < ApplicationController

    
    get '/roasters/:roaster_id/beverages/new' do 
        # binding.pry
        @roaster_id = params[:roaster_id].to_i
        erb :'beverages/new'
    end

    post '/roasters/:roaster_id/beverages/new' do
        # binding.pry
        roaster = current_user.roasters.find_by(id: params[:roaster_id])
        roaster.beverages.create(name: params[:name],
        ingredients: params[:ingredients],
        size: params[:size])

        redirect '/roasters'
    end


    get '/beverages/:id/edit' do
        # binding.pry
        @beverage = current_user.beverages.find_by(id: params[:id])
        
        erb :'beverages/edit'
    end

    patch '/beverages/:id' do
        # binding.pry
        beverage = current_user.beverages.find_by(id: params[:id])
        beverage.update(
            name: params[:name], 
            ingredients: params[:ingredients],
            size: params[:size])

        redirect '/roasters'
    end 

    delete '/roasters/:roaster_id/beverages/:id' do
        # binding.pry
        beverage = current_user.beverages.find_by(id: params[:id])
        beverage.destroy

        redirect '/roasters'
    end 
end