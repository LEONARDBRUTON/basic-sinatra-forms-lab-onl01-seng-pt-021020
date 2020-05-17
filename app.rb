require 'sinatra/base'
require_relative 'config/environment'

class App < Sinatra::Base


    get '/newteam' do
        erb :newteam
    end
    get '/team' do 
       erb :team 
    end

    
    post '/team' do
        @name = params["name"]
        @coach = params["coach"]
        @pg = params["pg"]
        @sg = params["sg"]
        @sf = params["sf"]
        @pf = params["pf"]
        @c = params["c"]

        erb :team
    end
end

  
    
    


