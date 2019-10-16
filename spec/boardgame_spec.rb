require './lib/boardgame.rb'

describe Dice do

  it 'can roll a dice' do 
    new_roll = Dice.new
    new_roll.roll_confirm
    expect(new_roll.roll_confirm).to eq "Dice rolled!"
  end
  it 'can only roll between 1 and 6' do
    new_roll = Dice.new
    new_roll.roll
    expect(new_roll.roll).to be_between(1, 6).inclusive
  end
  it 'can give me a random number from each dice roll' do
    new_roll = Dice.new
    expect(Kernel).to receive(:rand)
    new_roll.roll
  end
  it 'can roll multiple dice' do     
    new_roll = Dice.new
    new_roll.roll_multiple(2)
    expect(new_roll.roll_multiple(2).length).to be 2
  end
  it 'can tell me the scores of the dice rolled' do
    new_roll = Dice.new
    new_roll.roll_multiple(4)
    expect(new_roll.roll_multiple(4)).to all( be_an(Integer) )
  end
end