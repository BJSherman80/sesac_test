require 'rspec'
require 'pry'
require './board'
require './save_princess'

RSpec.describe SavePrincess do 

    it 'should have instance of a board, mario and princess' do
      game = SavePrincess.new(3,1,1, ["---", "-m-", "p--"])
      expect(game.board).to be_a Board 
      expect(game.mario).to be_a Mario
      expect(game.princess).to be_a Princess
    end

    it 'should print down' do
        game = SavePrincess.new(3,1,1, ["---", "-m-", "p--"])
        expect(game.next_move).to eq("DOWN")
    end

    it 'should print up' do
        game = SavePrincess.new(5,3,2, ["-----", "----p", "-----" "--m--", "-----"])
        expect(game.next_move).to eq("UP")
    end
    it 'should print right' do
        game = SavePrincess.new(5,1,0, ["-----", "m---p", "-----", "-----", "-----"])
        expect(game.next_move).to eq("RIGHT")
    end
    it 'should print left' do
        game = SavePrincess.new(5,1,4, ["-----", "p---m", "-----", "-----", "-----"])
        expect(game.next_move).to eq("LEFT")
    end
 
  end