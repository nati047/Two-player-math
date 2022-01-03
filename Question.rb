class Question

  def initialize(current_player)
    @current_player = current_player
    @num1 = rand(20)
    @num2 = rand(20)
    @solution = @num1 + @num2
  end
  
  def question_string 
    "#{@current_player}: what is #{@num1} plus #{@num2}?"
  end

  def is_correct? (answer)
    answer.to_i == @solution
  end  

end  