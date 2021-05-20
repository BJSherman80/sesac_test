require 'rspec'
require 'pry'
require './board'
require './mario'

RSpec.describe Mario do 

    it 'exists' do 
      board = Board.new(3,1,1, ["---", "-m-", "p--"])
      mario = Mario.new(board)
      expect(mario).to be_an(Mario)
    end 

    it 'has correct mario column and row cords' do 
        board = Board.new(3,1,1, ["---", "-m-", "p--"])
        mario = Mario.new(board)
        expect(mario.column).to eq(1)
        expect(mario.row).to eq(1)
    end 
end