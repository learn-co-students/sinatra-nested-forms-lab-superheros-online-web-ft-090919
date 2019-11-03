require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @superhero = Superhero.new(params[:superhero])

      params[:superhero][:team].each do |details|
        Team.new(details)
      end

      @teams = Team.all
      erb :team
    end
end
