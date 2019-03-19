class gameObj
  # HOW TO KEEP TRACK OF TURN? PLAYER.TURN? OR TURN OBJ
  def asksQuestion
    # asks question to player.turn
  end

  def takesAnswer
    # evaluates true/false
    # gives response
    # change player.turn health
  end

  def tellHealth
    # puts players health
    # if player.health 0, puts game over
    # game should stop here but how
  end

end

class Players
  attr_accessor :name, :health,
  
  def initialize name, health, 
  @name = name
  @health = health
  end

  def givesAnswer gameObj
    puts 'givesAnswer to gameObj'
  end
end

class Player1 < Players
  # WHAT SHOULD CHANGE BETWEEN CLASS AND INSTANCE
  attr_accessor :name, :health,
  
  def initialize name, health, 
  @name = name
  @health = health
  end

  def givesAnswer gameObj
    puts 'givesAnswer to gameObj'
  end
end

class Player2 < Players

  attr_accessor :name, :health,
  
  def initialize name, health, 
  @name = name
  @health = health
  end

  def givesAnswer gameObj
    puts 'givesAnswer to gameObj'
  end
end