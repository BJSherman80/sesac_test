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
        board_1 = Board.new(9, ["---", "-m-", "p--"])
        expect(board.bot_placement).to eq([1,1])
        expect(board_1.bot_placement).to eq([4,4])

    end 

    it "randomley places peach at one of the corners" do 
        board = Board.new(3, ["---", "-m-", "p--"])
        expect(board.princess_placemnt).to eq([0,0]).or eq([(board.board_size - 1),0]).or eq([0,(board.board_size - 1)]).or eq([(board.board_size - 1),(board.board_size - 1)])
    end 

end 