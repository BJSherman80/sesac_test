require './board'

class SavePrincess
  attr_accessor :board,
                :bot_location,
                :princess_location

  def initialize(board_size, board)
    @board = Board.new(board_size, board)
    @bot_location = @board.bot_placement
    @princess_location = @board.princess_placement
  end

end