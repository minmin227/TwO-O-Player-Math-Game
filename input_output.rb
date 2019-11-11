class Input 
  attr_accessor :answer
  def intialize
    @answer = nil
  end

  def scanner
    print ">"
    self.answer = gets.chomp.to_i
  end
end

