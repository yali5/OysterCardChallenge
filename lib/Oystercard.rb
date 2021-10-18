
class Oystercard

  attr_reader :balance
  MAX_BALANCE = 90
  
  def initialize( initial_balance = 0 )
    @balance = initial_balance
  end 

  def top_up(money)
    raise( "Maximum balance exceeded" ) if @balance + money >= MAX_BALANCE
    @balance += money
  end

end 
