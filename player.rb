class Player
  attr_reader :name
  attr_accessor :lives
  def initialize(name)
    @name = name
    @lives = 3
  end
end

bob = Player.new("Bob")

puts bob.name
puts bob.lives