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

  it 'can find placement differences' do 
    game = SavePrincess.new(3, ["---", "-m-", "p--"])

    expect(game.row_difference).to eq(1)
    expect(game.column_difference).to eq(-1)
  end 

  it 'can find path to princess' do 
    game = SavePrincess.new(3, ["---", "-m-", "p--"])
    expect(game.path_to_princess).to eq(["DOWN", "LEFT"])
  end 

  it 'can find path to princess' do 
    game = SavePrincess.new(3, ["p--", "-m-", "---"])
    expect(game.path_to_princess).to eq(["UP", "LEFT"])
  end 

  it 'can find path to princess' do 
    game = SavePrincess.new(3, ["---", "-m-", "--p"])
    expect(game.path_to_princess).to eq(["DOWN", "RIGHT"])
  end 

  it 'can find path to princess' do 
    game_1 = SavePrincess.new(5, ["-----", "-----", "--m--", "-----", "p----"])
    expect(game_1.path_to_princess).to eq(["DOWN", "DOWN", "LEFT", "LEFT"])
  end 
end