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

class Mario 
  attr_reader :column,
              :row 

  def initialize(board)
    @board = board
    @column = column_placement
    @row = row_placement
  end

  def column_placement
    @board.bot_placement[0]
  end 

  def row_placement
    @board.bot_placement[1]
  end
end 

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