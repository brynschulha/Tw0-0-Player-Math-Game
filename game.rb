# require './question'
# require './turn'
require './player'

class Game
  attr_accessor :current_player #:player1.lives, :player2.lives, 

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1.name
  end

  def change_current_player(game)
    if @currentPlayer == @player1
      @currentPlayer = @player2
    else
      @currentPlayer = @player1
    end
  end


  def check_lives(player1, player2)
    if player1.lives != 0 && player2.lives != 0
      puts "---NEW TURN---"
      # initialize new turn
      
    elseif player1.lives == 0
      puts "Player 2 wins with a score of #{player2.lives}/3"
      puts "---GAME OVER---"
    elseif player2.lives == 0
      puts "Player 1 wins with a score of #{player1.lives}/3"
      puts "---GAME OVER---"
    end
  end
end

bob = Player.new("Bob")
joe = Player.new("Joe")

puts bob.name
puts joe.name
g1 = Game.new(bob, joe)
puts g1.current_player
# puts bob.lives
g1.change_current_player(g1)
puts g1.current_player
g1.check_lives(@player1, @player2)
