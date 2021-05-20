require './board'

class Princess
  attr_reader :column,
              :row 

  def initialize(board)
    @column = column_placemnet(board)
    @row = row_placment(board)
  end

  def column_placemnet(board)
    board.princess_placement[0]
  end 

  def row_placment(board)
    board.princess_placement[1]
  end
end 