
class Oystercard

  attr_reader :initial_balance
  
  def initialize(initial_balance = 0)
    @initial_balance = initial_balance
  end 

  def balance
    @initial_balance
  end 

end 
