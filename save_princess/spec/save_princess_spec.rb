require 'rspec'
require 'pry'
require './board'
require './save_princess'

RSpec.describe SavePrincess do 
  it 'should have instance of a board, mario and princess' do
    game = SavePrincess.new(3, ["---", "-m-", "p--"])
 
    expect(game.board).to be_a Board 
    expect(game.mario).to be_a Mario
    expect(game.princess).to be_a Princess
  end

  it 'can find the cordinates for princess and mario' do 
    game = SavePrincess.new(3, ["---", "-m-", "p--"])

    expect(game.mario.row_placement).to eq(1)
    expect(game.mario.column_placement).to eq(1)
    expect(game.princess.row_placement).to eq(0)
    expect(game.princess.column_placement).to eq(2)
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