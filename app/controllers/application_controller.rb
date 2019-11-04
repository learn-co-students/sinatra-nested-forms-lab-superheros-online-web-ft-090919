require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])

      members = params[:team][:members]
      members.each do |details|
        Superhero.new(details)
      end

      @superhero = Superhero.all
      erb :team
    end
end
