require './board'
require './mario'
require './princess'

class SavePrincess
  attr_reader :board,
              :mario,
              :princess,
              :row_difference,
              :column_difference
  def initialize(n, r, c, board)
    @board = Board.new(n,r,c, board)
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

  def next_move
    if @row_difference.zero?
        horizontal
    else
        vertical
    end
  end

  def vertical
     @row_difference.negative? ? 'DOWN' : 'UP'
  end

  def horizontal
    @column_difference.negative? ? 'RIGHT' : 'LEFT'
  end 
  
end