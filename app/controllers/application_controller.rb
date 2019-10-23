require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :new
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |member|
        Member.new(member)
      end

      @team.members = Member.all

      erb :super_hero, :layout => :team 
    end

end
