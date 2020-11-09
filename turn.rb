require './question'

class Turn
  def change_current_player
    if currentPlayer == player1
      currentPlayer = player2
    else
      currentPlayer = player1
  end

  def initialize(question)
    puts question
  end
end