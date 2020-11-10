require './player'

class Game
  attr_accessor :current_player #:player1.lives, :player2.lives, 

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def change_current_player()
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def start()
    while true #player1.lives != 0 && player2.lives != 0
      puts "---NEW TURN---"
      # initialize new turn
      turn = Turn.new(Question.new(rand(20), rand(20)))
      if !turn.ask_question(@current_player)
      # turn.verify_answer(@current_player)
        @current_player.lives = @current_player.lives - 1
      end
      puts @current_player.name
      puts @current_player.lives
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      change_current_player
      # break if player1.lives == 0 || player2.lives == 0
      if @player1.lives == 0
        puts "Player 2 wins with a score of #{@player2.lives}/3"
        puts "---GAME OVER---"
        break
      end
      if @player2.lives == 0
        puts "Player 1 wins with a score of #{@player1.lives}/3"
        puts "---GAME OVER---"
        break
      end
    end
  end
end

# bob = Player.new("Bob")
# joe = Player.new("Joe")
# puts bob.lives
# g1 = Game.new(bob, joe)
# puts g1.current_player
# puts bob.lives
# g1.change_current_player
# puts g1.current_player
# g1.check_lives(@player1, @player2)
