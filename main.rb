require "./question"
require "./player"
require "./input_output"


class Game 
  attr_accessor :questions, :player1, :player2, :input, :turn_toggle
  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @questions = Question.new
    @input= Input.new
    @turn_toggle = true
  end

  def answer_correct?(answer, player, input)
    if answer != input 
      player.wrong_answer
      return false
     
    elsif answer == input 
     return true
    end
  end

  def who_won?(player1, player2)
    if player1.lives == 0 
      puts "Player 2 wins with a score of #{player2.lives}/3"
      puts "-----GAME OVER-----"
    elsif player2.lives == 0
      puts "Player 1 wins with a score of #{player1.lives}/3"
      puts "-----GAME OVER-----"
    else
      puts "-----NEW TURN-----"
    end
  end

  def current_player
    if self.turn_toggle == true
      puts "Player 1: " + "#{self.questions.ask}"
      puts answer_correct?(self.questions.answer, self.player1, self.input.scanner) ? "Player 1: Correct!" : "Player 1: Wrong answer."
      puts "P1: #{self.player1.lives}/3 P2: #{self.player2.lives}/3"
      self.turn_toggle = false
    else
      puts "Player 2: #{self.questions.ask}"
      puts answer_correct?(self.questions.answer, self.player2, self.input.scanner) ? "Player 2: Correct!" : "Player 2: Wrong answer."
      puts "P1: #{self.player1.lives}/3 P2: #{self.player2.lives}/3"
      self.turn_toggle = true
    end
   
  end

  def run
    while self.player1.lives > 0 && self.player2.lives > 0 do
      self.current_player
      who_won?(self.player1, self.player2)
    end
    puts "Good bye!"
  end

end

game = Game.new
game.run