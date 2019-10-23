
class Team

  attr_accessor :name, :motto, :members

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
  end

end
