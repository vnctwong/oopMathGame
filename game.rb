require './question'
require './player'

class Game

  def initialize
    @playerArray = [@p1,@p2]
    # @currentPlayer = @playerArray[0]
  end

  def start
    createNewPlayers
    puts "----------- NEW GAME -----------"
    puts "Welcome to the game Player #{@playerArray[0].name} and Player #{@playerArray[1].name}"
    puts "Player #{@playerArray[0].name} has #{@playerArray[0].lives} lives and Player #{@playerArray[1].name} has #{@playerArray[1].lives} lives."
    
    while @playerArray[0].lives > 0 && @playerArray[1].lives > 0
      #ask question
      puts "----------- NEW ROUND -----------"
      for item in @playerArray
      puts "Player #{item.name}'s turn:"
      newQuestion(item)
      puts "Player #{@playerArray[0].name} : #{@playerArray[0].lives}/3 LIVES \nPlayer #{@playerArray[1].name} : #{@playerArray[1].lives}/3 LIVES"
      puts "\n"
      end
    end  
    puts 'game over'
  end

  #create two players
  def createNewPlayers
    @p1 = Player.new '1'
    @p2 = Player.new '2'
  end
    
  def newQuestion(player)    
    #asks question
    question = Question.new
    puts question.question_text
    answer = gets.chomp
    right_answer = question.correct_answer? answer

    #validates
    if right_answer == false
        puts "\nThat is incorrect! :("         
        player.lives -= 1
      else 
        puts "\nThat is correct! :) "
    end

  end

  #create two players
  def createNewPlayers
    @p1 = Player.new '1'
    @p2 = Player.new '2'
    @playerArray = [@p1,@p2]
  end

end

  g = Game.new
  puts g.start