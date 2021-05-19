require 'rspec'
require 'pry'
require './board'
require './save_princess'

RSpec.describe SavePrincess do 
  it 'should have attributes and instance of a board' do
    game = SavePrincess.new(3, ["---", "-m-", "p--"])
    expect(game.board).to be_a Board 
    expect(game.bot_location).to eq([1,1])
    expect(game.princess_location).to eq([2,0])
  end
end