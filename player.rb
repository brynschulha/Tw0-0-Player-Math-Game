class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def is_alive?(player)
    if player.lives == 0
      return false
    else
      return true
    end
  end

  def decrement_life(player)
    player.lives = player.lives - 1
  end

  def end_message(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "---GAME OVER---"
  end
end
