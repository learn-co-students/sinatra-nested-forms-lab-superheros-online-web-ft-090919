class Member

  attr_accessor :name, :power, :bio

  @@members = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    @@members << self
  end

  def self.all
    @@members
  end

  def self.clear
    @@members.clear
  end

end
