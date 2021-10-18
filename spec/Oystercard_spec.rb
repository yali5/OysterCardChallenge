require './lib/Oystercard.rb'

describe Oystercard do 
  it 'Check a initialised oystercard has a balance of 0' do 
    my_oystercard = Oystercard.new
    expect(my_oystercard.balance). to eq 0
  end 
 
end 