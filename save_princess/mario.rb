require './board'

class Mario 
  attr_reader :column,
              :row 

  def initialize(board)
    @column = column_placemnet(board)
    @row = row_placment(board)
  end

  def column_placemnet(board)
    board.bot_placement[0]
  end 

  def row_placment(board)
    board.bot_placement[1]
  end
end 