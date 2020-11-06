class BeveragesController < ApplicationController

    get '/beverages/:id' do 
        @beverage = current_user.beverages.find_by(id: params[:id])
        erb :'beverages/show'
    end 




    get '/roasters/:roaster_id/beverages/new' do 
        if logged_in?
            @roaster_id = params[:roaster_id].to_i
            erb :'beverages/new'
        else
            redirect '/login'
        end 
    end

    post '/roasters/:roaster_id/beverages/new' do
        if logged_in?
            roaster = current_user.roasters.find_by(id: params[:roaster_id])
            roaster.beverages.create(name: params[:name],
            ingredients: params[:ingredients],
            size: params[:size])

            redirect '/roasters'
        else 
            redirect '/login'
        end
    end


    get '/beverages/:id/edit' do
        if logged_in?
            @beverage = current_user.beverages.find_by(id: params[:id])
            erb :'beverages/edit'
        else 
            redirect '/login'
        end 
    end

    patch '/beverages/:id' do
        if logged_in?
            beverage = current_user.beverages.find_by(id: params[:id])
            beverage.update(
                name: params[:name], 
                ingredients: params[:ingredients],
                size: params[:size])

            redirect '/roasters'
        else
            redirect '/login'
        end 
    end 

    delete '/roasters/:roaster_id/beverages/:id' do
        if logged_in?
            beverage = current_user.beverages.find_by(id: params[:id])
            beverage.destroy

            redirect '/roasters'
        else
            redirect '/login'
        end 
    end
end