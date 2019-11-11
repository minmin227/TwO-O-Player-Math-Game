class Question
  attr_accessor :number1, :number2, :answer
def initialize
  @number1 = nil
  @number2 = nil
  @answer = nil
end

def addition
  self.number1 = rand(20)
  self.number2 = rand(20)
  self.answer = self.number1 + self.number2
  "What is #{self.number1} plus #{self.number2}?"

end

def subtraction
  self.number1 = rand(20)
  self.number2 = rand(20)
  self.answer = self.number1 - self.number2
  "What is #{self.number1} minus #{self.number2}?"
end

def ask
  selector = rand(1)
  if selector == 1
    self.addition
  else
    self.subtraction
  end
end

end
