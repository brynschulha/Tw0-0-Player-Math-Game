class Question
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end
  
  def ask_question(current_player)
    puts "#{current_player.name}: What does #{@num1} + #{@num2} equal?"
    answer = gets.chomp.to_i
    if answer == (@num1 + @num2)
      puts "#{current_player.name}: YES! You are correct."
      return true
    else 
      puts "#{current_player.name}: Seriously? No!"
      return false
    end
  end
end

# q = Question.new(rand(20), rand(20))
