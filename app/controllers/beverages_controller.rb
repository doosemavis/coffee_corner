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
        roaster = current_user.roasters.find_by(id: params[:roaster_id])
        roaster.beverages.create(name: params[:name],
        ingredients: params[:ingredients],
        size: params[:size])

        redirect '/roasters'
    end


    get '/roasters/:roaster_id/beverages/edit' do
        erb :'beverages/edit'
    end

    patch '/roasters/:roaster_id/beverages/edit' do

    end 

    # post '/beverages' do 

    # end 
end