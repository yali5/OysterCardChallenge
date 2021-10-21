
class Oystercard

  attr_reader :balance, :money, :journey
  MAX_BALANCE = 90
  MIN_FARE = 1
  
  def initialize(initial_balance = 0)
    @balance = initial_balance
    @journey = false
  end 

  def top_up(money_in)
    @money = money_in
    @balance += @money unless over_balance_limit?
  end

  def deduct(money_out)
    @balance -= money_out
  end 

  def touch_in
    fail "not enough funds" unless balance > MIN_FARE
    @journey = true 
  end

  def touch_out
    @journey = false
  end

  def in_journey?
    @journey
  end

  private

  def over_balance_limit?
    raise("Maximum balance exceeded") if @balance + @money > MAX_BALANCE
  end

end 
