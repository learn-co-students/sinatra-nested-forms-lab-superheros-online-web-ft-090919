require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :new
    end

    post "/teams" do
     @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
     members = params[:team][:members]

     @heroes = members.collect do |details|
       Hero.new({name: details[:name], power: details[:power], bio: details[:bio]})
     end

     erb :team
   end

end
