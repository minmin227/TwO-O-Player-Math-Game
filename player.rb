class Player
  attr_accessor :score, :lives
  def initialize
    @score = 0
    @lives = 3
  end

  def wrong_answer
    self.lives = self.lives - 1
  end
end