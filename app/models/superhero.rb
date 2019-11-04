require 'pry'
class Superhero
  attr_reader :name, :power, :biograpy

 @@all = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biograpy = params[:biograpy]
    @@all << self
  end

  def self.all
    @@all
  end

end
