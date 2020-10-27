class RoastersController < ApplicationController

    get '/roasters' do
        binding.pry
        erb :'roasters/index'
    end

end