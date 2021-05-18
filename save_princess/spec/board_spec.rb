require 'rspec'
require 'pry'
require './board'

RSpec.describe Board do 

    it 'exists' do 
     board = Board.new(3, ["---", "-m-", "p--"])
     expect(board).to be_a(Board)
    end 

    it 'has a size and a board' do 
     board = Board.new(3, ["---", "-m-", "p--"])
     expect(board.board_size).to eq(3)
     expect(board.board).to eq(["---", "-m-", "p--"])
    end
end 