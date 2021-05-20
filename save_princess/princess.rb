require './board'

class Princess
  attr_reader :column,
              :row

  def initialize(board)
    @board = board
    @column = column_placement
    @row = row_placement
  end

  def column_placement
    @board.princess_placement[0]
  end 

  def row_placement
    @board.princess_placement[1]
  end
end 