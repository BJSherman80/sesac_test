require 'rspec'
require 'pry'
require './board'

RSpec.describe Board do 

    it 'can find peach on the board' do 
        board = Board.new(3,1,1,["---", "-m-", "p--"])
        expect(board.princess_placement).to eq([2, 0])
    end 

    it 'Instantiates with bot cordinates' do 
        board = Board.new(3,1,1,["---", "-m-", "p--"])
        expect(board.bot_placement).to eq([1,1])
    end 
end