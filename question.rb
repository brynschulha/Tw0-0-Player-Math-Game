class Question
  def initialize(num1, num2)
    puts "What does #{num1} + #{num2} equal?"
  end
end

q = Question.new(rand(20), rand(20))
