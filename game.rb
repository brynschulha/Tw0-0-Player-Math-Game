class Game
  attr_accessor :current_player

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

  def display_score
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
  end

  def start()
    while @player1.is_alive?(@player1) && @player2.is_alive?(@player2)
      puts "---NEW TURN---"
      # Initialize a new Turn
      turn = Turn.new(Question.new(rand(20), rand(20)))
      # Ask a Question, if value returned is false, decrement one life
      if !turn.ask_question(@current_player)
        @current_player.decrement_life(@current_player)
      end
      display_score
      change_current_player
      # Check if game continues
      if !@player1.is_alive?(@player1)
        @player2.end_message(@player2)
      end
      if !@player2.is_alive?(@player2)
        @player2.end_message(@player1)
      end
    end
  end
end
