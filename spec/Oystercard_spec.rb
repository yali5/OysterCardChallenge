require './lib/Oystercard.rb'

describe Oystercard do 
  it 'Check a initialised oystercard has a balance of 0' do 
    expect(subject::initial_balance). to eq 0
  end 
 
end 