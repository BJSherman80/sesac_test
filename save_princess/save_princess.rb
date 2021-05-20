require './board'
require './mario'
require './princess'

class SavePrincess
  attr_reader :board,
              :mario,
              :princess,
              :row_difference,
              :column_difference

  def initialize(board_size, board)
    @board = Board.new(board_size, board)
    @princess = Princess.new(@board)
    @mario = Mario.new(@board)
    @row_difference = row_difference
    @column_difference = column_difference
  end

  def row_difference 
    row_distance = @mario.row_placement - @princess.row_placement
  end

  def column_difference
    column_distance = @mario.column_placement - @princess.column 
  end

  def path_to_princess
    moves = []
    moves << (@column_difference.negative? ? ( ['DOWN'] * @column_difference.abs ) : ( ['UP'] * @column_difference.abs ))
    moves << (@row_difference.negative? ? ( ['RIGHT'] * @row_difference.abs ) : ( ['LEFT'] * @row_difference.abs ))
    moves.flatten
  end
end