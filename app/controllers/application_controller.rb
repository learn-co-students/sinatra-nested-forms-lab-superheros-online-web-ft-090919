require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team = Team.new(params[:team][:name], params[:team][:motto])
      @heroes = params[:team][:members].map { |member| Hero.new(member[:name], member[:power], member[:bio])}
      erb :team

    end

end
