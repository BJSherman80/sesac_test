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

    # now I need to place the bot in the center of the board with simple math to find middle of odd number

    it "places bot in the middle of the board" do 
        board = Board.new(3, ["---", "-m-", "p--"])
        expect(board.bot_placement).to eq([1,1])
    end 

    it "places bot in middle of board w/ different length" do 
        board_1 = Board.new(5, ["-----", "-----", "--m--", "-----", "p----"])
        expect(board_1.bot_placement).to eq([2,2])
    end

    it "find peach on board " do 
        board = Board.new(3, ["---", "-m-", "p--"])
        expect(board.princess_placement).to eq([2,0])
    end 

end 