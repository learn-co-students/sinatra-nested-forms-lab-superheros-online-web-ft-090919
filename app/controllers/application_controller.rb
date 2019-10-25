require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(params[:team])
        
        params[:team][:members].each do |hero_attrs|
            hero = Member.new(hero_attrs)
            @team.members << hero
        end
        
        erb :team
    end
end
