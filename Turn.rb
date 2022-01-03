class Turn 

  def initialize (c_player, n_player)
    @current_player = c_player
    @next_player = n_player
  end  

  def execute
    question = Question.new(@current_player.name)
    p question.question_string
    answer = gets.chomp
    if question.is_correct? (answer) 
      puts "#{@current_player.name} YES! You are correct."
    else 
      puts "#{@current_player.name}: Seriously? No! \n"
      @current_player.lose_life
    end 
    print_result
  end  

  def switch_player
    temp = @next_player
    @next_player = @current_player
    @current_player = temp
  end  

  # private

  def print_result
    if @current_player.lost 
      puts "\n#{@next_player.name} Wins with a score of #{@next_player.lives.to_s}/3"
      puts "GAME OVER"
    else 
      puts "P1: #{@current_player.lives}"  + "/3" + " vs P2: #{@next_player.lives}" + "/3"
      puts "\n------- NEW TURN ------"
    end 
  end  
end  