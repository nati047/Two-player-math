class Game
  
  def initialize(current_player)
    @current_player = current_player
    @num1 = rand(20)
    @num2 = rand(20)
    @solution = @num1 + @num2
  end
  
  def question_string 
    "what is #{@num1} plus #{@num2}?"
  end

end  