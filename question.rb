class Question
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    puts "What does #{num1} + #{num2} equal?"
    answer = gets.chomp
    if answer == (@num1 + @num2)
      puts "YES! You are correct."
      return true
    else 
      puts "Seriously? No!"
      return false
    end
  end
end

q = Question.new(rand(20), rand(20))
