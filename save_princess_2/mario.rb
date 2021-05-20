require './board'

class Mario 
  attr_reader :column,
              :row 

  def initialize(board)
    @board = board
    @column = column_placement
    @row = row_placement
  end

  def column_placement
    @board.bot_placement[1]
  end 

  def row_placement
    @board.bot_placement[0]
  end
end 