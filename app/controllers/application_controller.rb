require 'sinatra/base'
require 'byebug'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/team' do
        @team = Team.new(params[:team])
        @members = []
        params[:team][:members].each do |memeber_data|
            @members << Member.new(memeber_data)
        end
        erb :team
    end


end
