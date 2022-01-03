class Player 
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def lost 
    if @lives == 0 
      return true
    else
      return false
    end    
  end  
end
