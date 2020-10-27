class UsersController < ApplicationController

    get '/' do 
        erb :'user/index'
    end

    
    get '/login' do
        erb :'user/login'
    end 

    post '/login' do
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
        else 
            redirect '/signup'
        end
    end


    get '/signup' do 
        erb :'user/signup'
    end

    post '/signup' do 
        @user = User.create(name: params[:name], 
        email: params[:email], 
        username: params[:username], 
        password: params[:password])

        if @user 
            redirect '/login'
        end
    end

end