require './player'
require './question'

class MathGame
  def initialize
    @players = [Player.new(1), Player.new(2)]
    @question = Question.new
    @currentPlayer = @players[0]
  end

  def start
    while @players[0].lives > 0 && @players[1].lives > 0
      puts askQuestion
      answer(gets.chomp)
      puts "The score is now Player 1: #{@players[0].lives}/3, Player 2: #{@players[1].lives}/3"
      @question.newQuestion
    end

    winner = @players[0].lives == 0 ? @players[1] : @players[0]
    puts "Game over, Player #{winner.id} wins"
    puts "The score at the end was Player 1: #{@players[0].lives}/3, Player 2: #{@players[1].lives}/3"
  end

  def changePlayer
    @currentPlayer = @currentPlayer == @players[0] ? @players[1] : @players[0]
  end

  def askQuestion
    "Player #{@currentPlayer.id}: #{@question.question}"
  end

  def answer(ans)
    @question.answer == ans.to_i ? rightAnswer : wrongAnswer
  end

  def rightAnswer
    puts 'Right answer :)'
    changePlayer
  end

  def wrongAnswer
    puts 'Wrong answer :('
    @currentPlayer.lives = @currentPlayer.lives - 1
    changePlayer
  end
end

game = MathGame.new()
puts game.start