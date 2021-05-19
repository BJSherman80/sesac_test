class Board 
    attr_reader :board,
                :board_size,
                :bot_placement,
                :princess_placement
    def initialize(board_size, board)
      @board_size = board_size
      @board = board
      @bot_placement = find_bot_placement
      @princess_placement = find_princess_placement
    end

    def find_bot_placement
      [(@board_size - 1) / 2, (@board_size - 1) / 2]
    end

    def find_princess_placement
      princess_xy = []
      corner_positions = [0,0],
                         [@board_size - 1,0],
                         [0,@board_size - 1],
                         [@board_size - 1,@board_size - 1]
        corner_positions.each do |position|
          princess_xy << position if @board[position[0]][position[1]] == 'p'
         end
      princess_xy.flatten
    end
end 

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


def show_path(n,grid)
  start = SavePrincess.new(n, grid)
  start.path_to_princess.each do |move|
    puts move
  end
end
mario = gets.to_i
grid = Array.new(mario)
(0...mario).each do |x|
    grid[x] = gets.strip
end

show_path(mario,grid)