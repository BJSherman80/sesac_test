require 'rspec'
require 'pry'
require './board'
require './princess'

RSpec.describe Princess do 

    it 'exists' do 
      board = Board.new(3, ["---", "-m-", "p--"])
      princess = Princess.new(board)
      expect(princess).to be_an(Princess)
    end 

    it 'has correct mario column and row cords' do 
        board = Board.new(3, ["---", "-m-", "p--"])
        princess = Princess.new(board)

        expect(princess.column).to eq(2)
        expect(princess.row).to eq(0)
    end 
end