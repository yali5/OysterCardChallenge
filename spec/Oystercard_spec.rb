require './lib/Oystercard.rb'

describe Oystercard do 
  it 'Check a initialised oystercard has a balance of 0' do 
    expect(subject::balance). to eq 0
  end 
 
  describe 'top up' do

    it 'ensure that I can add money to my card' do
      expect(subject.top_up(10)). to eq 10
    end

    it 'checks there is a max balance limit of £90 on the card' do 
      expect{subject.top_up(91)}. to raise_error( "Maximum balance exceeded" )
    end 
  end

  describe 'deduct' do
    
    it 'deducts the customers fare from their card' do
      subject.top_up(10)
      subject.deduct(5)
      expect(subject::balance).to eq 5
    end 

  end 
  
end 