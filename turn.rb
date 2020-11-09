require './question'
require './game'
require './player'

class Turn
  def initialize(question)
    @question = question
  end

  def ask_question(question)
    puts "#{current_player}: #{question}"
  end

  def verify_answer(question)
    if question
      return true
    else
      return false
    end
  end
end

q = Question.new(rand(20), rand(20))
one = Turn.new(q)
# puts one
one.ask_question(q)
