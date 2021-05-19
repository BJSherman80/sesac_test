require './board'

class SavePrincess
  attr_reader :board,
              :bot_location,
              :princess_location,
              :row_difference,
              :column_difference

  def initialize(board_size, board)
    @board = Board.new(board_size, board)
    @bot_location = @board.bot_placement
    @princess_location = @board.princess_placement
    @row_difference = row_difference
    @column_difference = column_difference
  end

  def row_difference 
    row_distance = @bot_location[1] - @princess_location[1]
  end

  def column_difference
    column_distance = @bot_location[0] - @princess_location[0] 
  end

  def path_to_princess
    moves = []
    moves << (@column_difference.negative? ? ( ['DOWN'] * @column_difference.abs ) : ( ['UP'] * @column_difference.abs ))
    moves << (@row_difference.negative? ? ( ['RIGHT'] * @row_difference.abs ) : ( ['LEFT'] * @row_difference.abs ))
    moves.flatten
  end
end