require './lib/Oystercard'

describe Oystercard do 
  it 'Check a initialised oystercard has a balance of 0' do 
    expect(subject::balance).to eq 0
  end 
 
  describe 'top up' do

    it 'ensure that I can add money to my card' do
      expect(subject.top_up(10)).to eq 10
    end

    it 'checks there is a max balance limit of £90 on the card' do 
      expect { subject.top_up(91) }.to raise_error("Maximum balance exceeded")
    end 
  end

  describe 'deduct' do
    
    it 'deducts the customers fare from their card' do
      subject.top_up(10)
      subject.deduct(5)
      expect(subject::balance).to eq 5
    end 

  end 

  describe 'touch_in' do
    
    it 'works against oystercard class' do
      subject = Oystercard.new
      subject.top_up(Oystercard::MAX_BALANCE)

      expect(subject.touch_in).to be_truthy
    end 

    it 'checks minium balance' do
      subject = Oystercard.new
      subject.top_up(Oystercard::MIN_FARE - 0.01)
      expect{subject.touch_in}.to raise_error "not enough funds"
    end 

  end 

  describe 'touch_out' do
    
    it 'works against oystercard class' do
      subject = Oystercard.new
      subject.top_up(Oystercard::MAX_BALANCE)
      subject.touch_in
      expect( subject.touch_out ).to be false
    end  

  end 

  describe 'in_journey?' do
    
    it 'touch_in works against oystercard class' do
      subject = Oystercard.new
      subject.top_up(Oystercard::MAX_BALANCE)
      subject.touch_in
      expect(subject.in_journey?).to be_truthy
    end 

    it 'touch_out works against oystercard class' do
      subject = Oystercard.new
      subject.top_up(Oystercard::MAX_BALANCE)
      subject.touch_in
      subject.touch_out
      expect( subject.in_journey? ).to be false
    end 

  end 
  
end 
