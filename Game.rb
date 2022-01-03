class Game 

  def initialize
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
  end
  
  def play 
    turn = Turn.new(@p1, @p2)
    until (@p1.lost || @p2.lost) do
      turn.execute
      turn.switch_player
    end
  end    

end  