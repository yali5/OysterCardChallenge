require 'station'
require 'oystercard'

describe Station do 
  it 'touch_in should remember entry_station' do
  subject = Station.new
  card = Oystercard.new 
  touch_in(card)
  expect(touch_in(card)).to eq 'Victoria'
  end 
end 