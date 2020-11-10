class Turn
  attr_accessor :question
  def initialize(question)
    @question = question
  end

  def ask_question(current_player)
    @question.ask_question(current_player)
  end

  def verify_answer(current_player)
    if @question.ask_question(current_player)
      return true
    else
      return false
    end
  end
end

# q = Question.new(rand(20), rand(20))
# one = Turn.new(q)
# # puts one
# one.ask_question()
