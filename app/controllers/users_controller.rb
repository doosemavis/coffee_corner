class UsersController < ApplicationController

    get '/' do 
        erb :'user/index'
    end

    post '/login' do
        user = User.create(username: params[:username], 
        password: params[:password])

        if user && user.authenticate(params [:password])
            session[:user_id] = user.id
        else 
            redirect 'user/signup'
        end
    end

    get '/signup' do 
        erb :'user/signup'
    end

    post '/signup' do 
        user = User.create(name: params[:name], 
        email: params[:email], 
        username: params[:username], 
        password: params[:password])
    end 

end