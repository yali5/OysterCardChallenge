
class Oystercard

  attr_reader :balance, :money
  MAX_BALANCE = 90
  
  def initialize(initial_balance = 0)
    @balance = initial_balance
  end 

  def top_up(money_in)
    @money = money_in
    @balance += @money unless over_balance_limit?
  end

  def deduct(money_out)
    @balance -= money_out
  end 

  private

  def over_balance_limit?
    raise("Maximum balance exceeded") if @balance + @money >= MAX_BALANCE
  end

end 
